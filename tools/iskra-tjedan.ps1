# Iskra: tjedni prijedlog objava (pokreće Task Scheduler srijedom u 18:00 na Sandrinom računalu).
# Ručno:   powershell -NoProfile -ExecutionPolicy Bypass -File C:\Work\Objave\tools\iskra-tjedan.ps1
# Tjedan:  ... -Tjedan 2026-W45
#
# Radi bez korisnika (claude -p), u agentskom načinu: BT_AGENT_MODE=1 znači da kuke
# zoho-send-guard.py i agent-mcp-guard.py dopuštaju samo čitanje maila i NACRTE, nikad slanje.
# Ključ: isti kao za mail agente (C:\Work\Agents\set-api-key.ps1). Trošak po pokretanju je ograničen s -Budget.
param(
  [string]$Tjedan = "",
  [string]$Budget = "20",
  [switch]$UseSubscription
)
$ErrorActionPreference = "Stop"
$Repo   = "C:\Work\Objave"
$Claude = "C:\Users\Sandra\.local\bin\claude.exe"
$KeyFile = "C:\Work\_BanTechnologies\Shared\Credentials\anthropic-api-key.dpapi"
$LogDir = "$Repo\tools\log"
New-Item -ItemType Directory -Force $LogDir | Out-Null
$Utf8 = [Text.UTF8Encoding]::new($false)
[Console]::OutputEncoding = $Utf8
$stamp = (Get-Date).ToString("yyyyMMdd-HHmmss")

function Toast($t1, $t2) { & python "C:\Work\Agents\tools\notify.py" $t1 $t2 2>$null }

# Ako postoji API ključ mail agenata, koristi njega (odvojen trošak); inače Sandrinu Claude pretplatu
# (prijava iz Claude Codea na ovom računalu; troši njezin limit, oko jednog većeg pokretanja tjedno).
if (-not $UseSubscription -and (Test-Path $KeyFile)) {
  $sec = Get-Content $KeyFile | ConvertTo-SecureString
  $env:ANTHROPIC_API_KEY = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($sec))
} else {
  Remove-Item Env:\ANTHROPIC_API_KEY -ErrorAction SilentlyContinue
}
$env:BT_AGENT_MODE = "1"

$cilj = if ($Tjedan) { "za tjedan $Tjedan" } else { "za idući tjedan" }
$prompt = @"
Pokreni skill iskra-tjedan $cilj. Radiš u pozadini, bez korisnika: ništa ne pitaj, sve nejasno upiši u odjeljak Pitanja prijedloga. Nikad ne šalji mail (samo nacrt), ne objavljuj ništa i ne diraj web stranice. Na kraju commit i push u repozitorij Objave.
"@
$pf = "$LogDir\prompt-$stamp.txt"
[IO.File]::WriteAllText($pf, $prompt, $Utf8)

$allowed = "Read,Write,Edit,Glob,Grep,Agent,Skill,WebFetch,WebSearch,ToolSearch,PowerShell,Bash(git:*),Bash(python:*),Bash(ls:*),Bash(cp:*),Bash(mkdir:*),mcp__zoho-mail__ZohoMail_listEmails,mcp__zoho-mail__ZohoMail_SearchEmails,mcp__zoho-mail__ZohoMail_getMessageContent,mcp__zoho-mail__ZohoMail_getMessageDetails,mcp__zoho-mail__ZohoMail_sendEmail"
$disallowed = "ScheduleWakeup,CronCreate,CronDelete,Monitor,RemoteTrigger,PushNotification,Workflow,SendMessage,Artifact,EnterWorktree"
$a = @("-p", "--model", "claude-opus-5-5", "--permission-mode", "dontAsk",
       "--allowedTools", "`"$allowed`"", "--disallowedTools", "`"$disallowed`"",
       "--max-budget-usd", $Budget, "--add-dir", "C:\Work",
       "--output-format", "stream-json", "--verbose")

Push-Location $Repo
try {
  & git pull --quiet 2>$null
  Start-Process -FilePath $Claude -ArgumentList $a -NoNewWindow -Wait `
    -RedirectStandardInput $pf -RedirectStandardOutput "$LogDir\run-$stamp.jsonl" -RedirectStandardError "$LogDir\run-$stamp.err.txt" | Out-Null
} finally { Pop-Location }

$err = Get-Content "$LogDir\run-$stamp.err.txt" -Raw -ErrorAction SilentlyContinue
if ("$err" -match "Invalid API Key|invalid_api_key|Needs authentication|401") {
  Toast "Iskra: problem s prijavom" "Zoho ili Anthropic kljuc - provjeri /mcp ili set-api-key.ps1"
} elseif (Select-String -Path "$LogDir\run-$stamp.jsonl" -Pattern '"is_error":true' -Quiet) {
  Toast "Iskra: tjedni prijedlog nije uspio" "Log: $LogDir\run-$stamp.jsonl"
} else {
  Toast "Iskra: prijedlog objava je spreman" "C:\Work\Objave\tjedni-prijedlog (i nacrt u Zohu)"
}
# Stari logovi: zadrži zadnjih 20 pokretanja (3 datoteke po pokretanju).
Get-ChildItem $LogDir -File | Sort-Object LastWriteTime -Descending | Select-Object -Skip 60 | Remove-Item -Force
