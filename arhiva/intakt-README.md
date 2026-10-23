# InTakt — Content Engine

Ovo je "marketing agent" za InTakt. Nije aplikacija — to je **trajno pamćenje + par komandi** kojima upravljaš kroz Claude Code (ovaj prozor u VS Codeu). Claude čita i dopunjuje ove datoteke; ti razgovaraš, on radi.

## Kako komuniciraš (3 načina)
1. **Ti kažeš, on napravi** — običnim jezikom u chatu:
   - *"Evo ideje: …"* → doda u `idea-inbox.md`, kaže kamo pada. Ne prepisuje plan.
   - *"Napravi plan za [mjesec]"* → puni `content-calendar.md` (30/70).
   - *"Napiši [tu temu] za Instagram"* → gotov nacrt u tvom glasu, spreman za copy-paste.
   - *"Što sam objavila i kako je prošlo?"* → sažetak iz `published-log.md` + Meta brojki.
2. **Dnevni capture** — `/iskra-scan`: pročita što si radila po projektima (git-diff) + po potrebi vijesti, ostavi 3–5 redaka brifinga i doda ideje u inbox. Jeftino (samo diff).
3. **Živo stanje** — sve su datoteke; plan je uvijek vidljiv, ništa nije zaključano u aplikaciji.

## Datoteke
| Datoteka | Što je |
|---|---|
| `content-calendar.md` | Živi plan objava. Dopunjuje se, ne prepisuje. |
| `idea-inbox.md` | Sve ideje (tvoje, Petrine, Dubravkove, iz projekata/vijesti) + backlog od 10 gotovih nacrta. |
| `published-log.md` | Što je stvarno izašlo + rezultati. Za Meta se može puniti automatski. |
| `voice-intakt.md` | Profil glasa — Claude ga čita prije svakog posta. |
| `sources.md` | Pillari (30/70) + izvori za praćenje + blog pipeline. |

## Seed
Seedano **selektivno** iz starog Marketing Managera (`Products/Media Manager/data/`): uzeti su stvarni nacrti objava i objavljeno; izbačeni su email-outreach, follow-up i setup-taskovi (to je CRM, ostaje u Media Manageru). Stara aplikacija je netaknuta.

## Trošak
Dnevni `/marketing-scan` je namjerno lagan (čita samo promjene, jeftin model). Pisanje objava (skuplji model) tek kad tražiš. Automatski dnevni brifing bez tvog okidača = dodaje se kasnije (lokalni zakazani zadatak), kad se tok pokaže korisnim.

## Status izgradnje
- [x] Struktura + selektivni seed
- [x] Komande: `/iskra-scan`, `/iskra-plan`, `/iskra-draft`, `/iskra-idea`
- [x] Cross-project capture ožičen u glavni `CLAUDE.md` (svaki projekt zna za Iskru)
- [ ] Voice pass na 10 seedanih nacrta (dijakritika + glas)
- [ ] Prvi pravi plan (kolovoz)
- [ ] Meta konektor: auto-punjenje objavljenog + rezultata
- [ ] (opcija) automatski dnevni brifing (lokalni zakazani zadatak)
