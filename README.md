# Objave (Iskra): kako radi

Zajedničko mjesto za objave Sandre i Petre: ideje, tjedni prijedlozi gotovih objava, pravila glasa, master tablica edukacija i izjave klijenata. Radi isto kao InTakt projekt: povučete ga u Claude i razgovarate s njim.

## Tjedan
| Kada | Što |
|---|---|
| bilo kad | Ideju zapišete u Claudeu u ovom projektu: „pošalji Iskri: ..." (ili sama dođe iz maila, InTakta, kalendara edukacija, zakona) |
| srijeda 18:00 | Iskra sama složi prijedlog za idući tjedan (na Sandrinom računalu) |
| četvrtak ujutro | U `tjedni-prijedlog/` su gotovi tekstovi; Sandra ima nacrt maila u Zohu; obje imaju InTakt zadatak „Pregled prijedloga objava" |
| do petka 12:00 | U Claudeu: **„pregledaj prijedlog"**. Za svaku svoju objavu: odobri, izmijeni, odbij ili prebaci drugoj |
| idući tjedan | Objavite u terminu (InTakt zadatak i kalendar podsjete), pa Claudeu: **„objavila sam"** (zalijepite tekst ako ste ga mijenjale) |

Blog se objavljuje na web tek kad autorica tog bloga kaže **„može objava"**.

## Ritam za početak (6 tjedana od 26.10.2026.)
Sandra 2 objave tjedno, Petra 1, blog jednom mjesečno. Povećava se kad 4 tjedna zaredom odradite plan i kad same kažete da možete više.

## Kako Iskra uči vaš stil
Kad tekst izmijenite, Iskra zapiše razliku i predloži pravilo („Petra ne otvara pitanjem"). Pravila potvrđujete vi, otprilike jednom mjesečno, i tek tada ulaze u `glas/`.

## Naredbe u Claudeu (u ovom projektu)
- „pošalji Iskri: ..." → nova ideja
- „pregledaj prijedlog" → pregled svojih objava
- „objavila sam ..." → upis objavljenog
- „može objava" → objava bloga na web
- „komentar: <zalijepljena tuđa objava>" → prijedlog komentara (Iskra sama ne otvara LinkedIn ni Facebook)

## Za Petru: prvo postavljanje (jednom)
1. U VS Codeu ili terminalu: `git clone https://ban-tech@dev.azure.com/ban-tech/BanTech/_git/Objave` u mapu po želji (npr. `C:\Work\Objave`).
2. Otvori mapu u Claudeu (kao InTakt projekt).
3. Provjeri da je `git config user.email` = petra@ban-technologies.com (po tome Iskra zna da si ti).
4. Napiši „pregledaj prijedlog" ili „pošalji Iskri: ...".

## Što je gdje
Pogledaj `CLAUDE.md` (tablica „Što je gdje"). Najvažnije: `ideje/`, `tjedni-prijedlog/`, `glas/`, `pravila/`, `EDUKACIJE_MASTER.xlsx`, `TESTIMONIALS.md`.

## Automatsko pokretanje (Sandrino računalo)
- Zadatak u Windowsima „Iskra - tjedni prijedlog objava" (srijedom 18:00): `tools/register-iskra-tjedan.ps1`. Ako je računalo ugašeno, pokrene se kad se upali.
- Ručno pokretanje: `powershell -NoProfile -ExecutionPolicy Bypass -File C:\Work\Objave\tools\iskra-tjedan.ps1`.
- Zapisi pokretanja: `tools/log/` (nisu u gitu).
