# Paket objave: jedna tema, četiri kanala

> Prijedlog 29.10.2026. (Dubravko), **čeka potvrdu Sandre i Petre**. Dok ga ne potvrde, vrijedi postojeći ritam iz `pravila/teme-i-ritam.md`.

## Ideja
Svaka nova tema izlazi kao **paket**, ne kao jedna objava. Blog na intakt-suite.com je sidro (SEO, trajno, na njega vode svi linkovi), a mreže su izvedenice istog sadržaja, prilagođene kanalu.

| # | Kanal | Uloga | Duljina | Tko objavljuje |
|---|---|---|---|---|
| B | **Blog** intakt-suite.com/hr/blog | sidro: cijelo znanje, ključna riječ iz SEO plana, izvori | 800 do 1500 riječi | Iskra, nakon „može objava" autorice (`pravila/blog-objava.md`) |
| L | **LinkedIn** (osobni profil autorice) | priča i jedan uvid; link na blog u prvi komentar | 150 do 450 riječi | autorica |
| F | **Facebook** (InTakt stranica; za Petru i grupe računovođa) | kraće, konkretno, praktično; u grupama bez reklame | 60 do 200 riječi | autorica |
| I | **Instagram objava** (karusel 5 do 7 slajdova ili jedna kartica) | savjet koji se sprema („spremi za kasnije") | slajd = jedna rečenica | Dubravko vodi Instagram profil InTakta (interno; javno se ne spominje): objavljuje karusel iz pripremljenog teksta i slajdova |

Video (Reel) zasad **nije u planu** (odluka 29.10.2026.); vraća se kad se dogovori snimanje. Iskra i dalje **ne otvara** LinkedIn, Facebook ni Instagram (`pravila/komentiranje.md`): priprema tekstove; LinkedIn i Facebook objavljuje autorica, Instagram Dubravko.

## Redoslijed unutar paketa (jedan tjedan)
1. **Blog** izlazi prvi (pon ili uto), jer svi ostali kanali na njega upućuju.
2. **LinkedIn** isti ili idući dan (uto do čet, 8:00 do 9:00).
3. **Facebook** dan nakon LinkedIna (9:00 do 11:00).
4. **Instagram karusel** isti ili idući dan (Dubravko).
5. Za 4 do 8 tjedana: **reciklaža** (drugi kut iste teme, drugi citat iz bloga, odgovor na pitanje iz komentara).

Ako tema nema dovoljno za blog (kratka refleksija, najava radionice), paket je **smanjeni**: L + F + I, bez B. To se u prijedlogu označi.

## Veza sa SEO planom (repo seo-monitor)
- Svaki blog ima **jednu glavnu ključnu riječ** iz `seo-monitor` (`config.json`, `sites[intakt].keywords`) ili iz izvještaja `seo-monitor gaps` (odjeljak „Pages to create" i „Striking distance").
- Prioritet tema za blog: (1) „Pages to create" s najviše prikaza, (2) „Striking distance" (postojeći članak proširiti, ne novi), (3) ideje iz `ideje/` koje pogađaju ključnu riječ.
- Trenutne ključne riječi (InTakt): program za skladište, skladišni program, program za radne naloge, radni nalozi aplikacija, radni nalozi za instalatere, program za montažere, program za ponude i radne naloge, fiskalizacija 2.0 program, eRačun program za obrt, fiskalna blagajna, ERP za male tvrtke, izrada cjenika.
- Grubo: Sandrine teme pokrivaju skladište, radne naloge, montažere, ERP za male tvrtke; Petrine eRačun, fiskalizaciju, fiskalnu blagajnu, izradu cjenika.
- Ključna riječ ide u naslov, slug, prvi odlomak i opis (meta description), ali **glas autorice ima prednost** pred gustoćom ključnih riječi. Na mrežama se ključna riječ ne gura.
- Unutarnje poveznice (2 do 3 iz novog bloga, barem jedna iz starijeg na novi, opisni tekst poveznice): `pravila/blog-objava.md`.
- Nakon objave: `seo-monitor indexnow --site intakt --urls <adresa>` (na Sandrinom računalu) i „Zatraži indeksiranje" u Search Consoleu, a za 4 do 6 tjedana provjera u `gaps` je li članak počeo dobivati prikaze.

## Kalendar
Kalendar se ne vodi u zasebnoj datoteci nego ostaje u tjednom prijedlogu (`tjedni-prijedlog/<GGGG-Wtt>.md`), s jednim dodatkom: **plan paketa za 6 tjedana** na vrhu svakog prijedloga.

```
## Plan paketa (6 tjedana)
| Tjedan | Autorica | Tema | Ključna riječ | Paket | Stanje |
| W46 | Sandra | „Otprilike" na skladištu | program za skladište | B L F I | tekst u prijedlogu |
| W47 | Petra  | eRačun za obrt od 2027. | eRačun program za obrt | B L F I | najava +2, izvori |
| W48 | Sandra | Radni nalozi na terenu | radni nalozi za instalatere | B L F I | ideja |
```

- Teške teme (zakon, stručni blog) ulaze u plan **2 tjedna ranije** kao i do sada.
- Najave radionica ostaju izvan paketa (smanjeni paket ili samo L + F), po pravilima za tjedne s radionicama.
- Pravilo 48 sati vrijedi za svaki kanal paketa posebno: što nije pregledano, ne izlazi, ostatak paketa može izaći.

## Ritam (prijedlog, odlučuju Sandra i Petra)
Puni paket je blog i tri objave po temi, što je više od sadašnjeg plana (Sandra 2, Petra 1 objava tjedno, blog 1 mjesečno). Prijedlog prijelaza:
- **Studeni 2026.:** jedan puni paket svaka 2 tjedna, naizmjence Sandra i Petra; ostale objave kao do sada.
- **Od prosinca, ako su 4 tjedna odrađena:** jedan puni paket tjedno, naizmjence (svaka autorica jedan paket u 2 tjedna).
- Paket se računa u kvotu: LinkedIn + Facebook iz paketa = objave tog tjedna za autoricu.

## Provjere
Svaki dio paketa prolazi iste provjere kao svaka objava (glas, anti-AI, `iskra-citatelj`, lektura `jelena`, izvori za propise, GDPR). Za Instagram: tekst na slajdovima prolazi istu lekturu; ako je išta u vizualu generirano AI-jem, oznaka „Generirano pomoću UI" (AI Act čl. 50.).

## Predlošci i primjeri
- `predlosci/paket-sandra.md`, `predlosci/paket-petra.md`: prazni predlošci po autorici.
- `predlosci/primjeri/`: popunjeni primjeri; postaju „zlatni uzorci" tek kad ih autorica odobri ili ispravi.

## Otvoreno
- Instagram vodi Dubravko (29.10.2026.); pravila i TODO za pokretanje: `pravila/instagram.md`. Dok nije pokrenut, I se u paketu preskače.
- Video (Reel): kasnije, kad se dogovori tko i kako snima.
- EN verzija bloga (altSlug) za koje teme?
