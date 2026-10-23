# Objave: zajednički sustav objava (Iskra)

Ovaj repozitorij dijele **Sandra Ban** i **Petra Ovčarić** (Ban Technologies d.o.o.), a kasnije možda i Dubravko. Svatko ga povuče u Claude na svom računalu. Sustav se zove **Iskra**: skuplja ideje, svaki tjedan predlaže gotove objave u glasu autorice, prati što je objavljeno i uči iz izmjena.

**Ovaj projekt mora raditi i bez `C:\Work`.** Petrino računalo nema Sandrine mape, pa sve što Iskra treba za pisanje mora biti ovdje. Putanje izvan repozitorija (`C:\Work\...`) koristi samo pokretač na Sandrinom računalu i uvijek prvo provjeri postoje li.

## Što je gdje
| Mapa / datoteka | Što |
|---|---|
| `ideje/` | jedna datoteka po ideji (`_PREDLOZAK.md`); svi pišu ovamo |
| `tjedni-prijedlog/<GGGG-Wtt>.md` | prijedlog objava za tjedan: gotovi tekstovi, statusi, odluke |
| `glas/sandra.md`, `glas/petra.md` | pravila glasa; `glas/izmjene/` su prijedlozi novih pravila iz vaših izmjena |
| `pravila/` | teme i ritam, težine, anti-AI, GDPR i AI Act, vizuali, blog, komentiranje |
| `zakoni/` | tko prati koje propise, sažeci izmjena |
| `alati/` | ideje za mini alate |
| `objavljeno/dnevnik.md` | što je zaista objavljeno |
| `mjerenje/tjedni-broj.md` | jedan broj tjedno: upiti i prijave s mreža |
| `stanje/` | interno stanje pokretača (zadnje provjere, nalozi za InTakt i kalendar) |
| `EDUKACIJE_MASTER.xlsx` | **jedini izvor istine za radionice i edukacije** (termini, cijene, izvođači) |
| `TESTIMONIALS.md` | izjave klijenata i privole (tko smije biti imenovan) |
| `bt/`, `intakt/` | stupovi sadržaja i profil glasa brenda (BT, InTakt) |
| `arhiva/` | stari Iskra inboxi i kalendari (samo za čitanje) |

## Skillovi
- `/iskra-ideja` ili „pošalji Iskri ..." → nova ideja u `ideje/`.
- `/iskra-pregled` ili „pregledaj prijedlog" → pregled i odobravanje svojih objava za tjedan; „objavila sam ..."; „može objava" za blog.
- `/iskra-odmah` ili „na horuk: ...", „hoću sutra objaviti ..." → tema ili blog izvan plana; odmah tekst s istim provjerama, ulazi u plan, ostalo se preslaže (pomiče, ne briše).
- `/iskra-komentar` ili „komentar: <tekst objave>" → prijedlog komentara na tuđu objavu.
- `/iskra-tjedan` → slaže prijedlog za idući tjedan (inače ga sam pokreće raspored srijedom navečer na Sandrinom računalu).

## Tvrda pravila (vrijede za svaki tekst iz ovog projekta)
1. **Tekst nikad ne ide van bez izričitog odobrenja autorice.** Iskra ne objavljuje na LinkedInu ni Facebooku (to radite vi), a blog objavljuje samo nakon „može objava" autorice tog bloga (`pravila/blog-objava.md`).
2. **Glas autorice** (`glas/<osoba>.md`) i **anti-AI provjera** (`pravila/anti-ai.md`) za svaki tekst. **Bez em-crtica (—).**
3. **Lektura** agentom `jelena` prije nego tekst dođe autorici.
4. **Propisi samo iz službenog izvora** (Narodne novine, EUR-Lex, Porezna uprava, FINA, AZOP). Nikad po sjećanju. Ako tumačenje nije jasno, pitaj vlasnicu teme (`zakoni/nadzor.md`).
5. **GDPR:** korisnike i klijente bez privole ne imenovati i ne opisivati prepoznatljivo (`pravila/gdpr-ai-akt.md`, `TESTIMONIALS.md`). Obrt je fizička osoba. Podaci iz maila ne prepisuju se u repozitorij, samo anonimizirana ideja.
6. **Dubravko se javno ne spominje.** O funkcijama koje razvija pišemo, o njemu ne.
7. **Nikad ne reći da je nešto lako, bez napora ili „samo par klikova"** (osim kad je alat zaista besplatan).
8. Brend se piše **InTakt**.
9. Iskra **ne otvara LinkedIn ni Facebook** (ni preglednikom); `pravila/komentiranje.md`.
10. **Mail samo kao nacrt**, nikad slanje bez izričite potvrde. Pozadinski pokretač ne šalje ništa.

## Master tablica edukacija
`EDUKACIJE_MASTER.xlsx` se mijenja samo openpyxl load-edit-save (nikad generator koji briše komentare). Prije izmjene `git pull`, odmah nakon izmjene commit i push, jer se xlsx ne može spojiti ako obje mijenjate istovremeno. Nakon izmjene na Sandrinom računalu pokreni lanac iz `C:\Work\CLAUDE.md` (termini za web, kalendar opterećenja, materijali za suradnice, međustranica).

## Git
- Na početku svakog rada `git pull`, na kraju commit s jasnom porukom i `git push`. Male, česte promjene.
- **Commit i push odmah, bez pitanja** (Sandrina odluka 23.10.2026., vrijedi i za Petru): čim je izmjena gotova (ideja, prijedlog, pravilo, odluka), commitaj i pushaj, da se Sandrina i Petrina kopija ne raziđu. Ne čekati kraj sesije i ne pitati za dopuštenje. (Iznimka: sukob pri `git pull`, vidi niže.)
- Jedna ideja = jedna datoteka, pa se izmjene dvije osobe ne sudaraju.
- Ako `git pull` javi sukob, ne rješavaj ga brisanjem tuđih izmjena: pokaži sukob osobi i pitaj.

## Tko je tko
- **Sandra**: AI, HR i transparentnost plaća, WMS, skladište, radni nalozi, InTakt; LinkedIn i Facebook InTakta; sandra@ban-technologies.com.
- **Petra**: računovodstvo, porezi, eRačun, fiskalizacija; prvenstveno Facebook i grupe računovođa; petra@ban-technologies.com. Bio: `_BanTechnologies/Brand/petra-ovcaric-bio.md` (na Sandrinom računalu).
- Kako odrediti tko radi: `git config user.email` (Sandra: sandra@ban-technologies.com ili sandra.ban.proj@gmail.com; Petra: petra@ban-technologies.com ili petra@intakt-suite.com); ako nije jasno, pitaj.
