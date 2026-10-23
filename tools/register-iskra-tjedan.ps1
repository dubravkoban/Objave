# Uključi automatski tjedni prijedlog objava: svake srijede u 18:00.
# Ako je računalo u to vrijeme ugašeno, zadatak se pokrene čim se računalo upali (StartWhenAvailable).
# Pokreni JEDNOM:  powershell -NoProfile -ExecutionPolicy Bypass -File C:\Work\Objave\tools\register-iskra-tjedan.ps1
# Isključivanje:   Unregister-ScheduledTask -TaskName "Iskra - tjedni prijedlog objava" -Confirm:$false
# Pauza:           Disable-ScheduledTask -TaskName "Iskra - tjedni prijedlog objava"

$name = "Iskra - tjedni prijedlog objava"
$action = New-ScheduledTaskAction -Execute "powershell.exe" `
  -Argument '-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "C:\Work\Objave\tools\iskra-tjedan.ps1"'
$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Wednesday -At "18:00"
# Bez fiksnog pomaka (+02:00), da 18:00 ostane 18:00 i nakon promjene ljetnog/zimskog vremena.
$trigger.StartBoundary = (Get-Date -Hour 18 -Minute 0 -Second 0).ToString("yyyy-MM-ddTHH:mm:ss")
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -MultipleInstances IgnoreNew -ExecutionTimeLimit (New-TimeSpan -Hours 2)
Register-ScheduledTask -TaskName $name -Action $action -Trigger $trigger -Settings $settings -Description "Iskra: prijedlog objava za idući tjedan (C:\Work\Objave)" -Force | Out-Null
Write-Host "Ukljuceno: '$name' (srijedom u 18:00)."
