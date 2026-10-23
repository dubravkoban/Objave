---
name: iskra-tjedan
description: Iskra — složi prijedlog objava za idući tjedan (gotovi tekstovi u glasu Sandre i Petre, lektorirani, s vizualima i rasporedom). Pokreće ga raspored srijedom navečer na Sandrinom računalu; može i ručno („složi prijedlog za idući tjedan").
---

# Iskra: tjedni prijedlog

Cilj: u četvrtak ujutro Sandra i Petra imaju **gotove** objave za idući tjedan, koje samo pročitaju, po potrebi isprave i odobre.

Argument (neobavezan): tjedan u obliku `GGGG-Wtt`. Zadano: idući ISO tjedan.

## 0. Priprema
- `git pull`. Pročitaj `CLAUDE.md`, sve iz `pravila/`, `glas/sandra.md`, `glas/petra.md`, `bt/sources.md`, `intakt/sources.md`.
- Ako je pokrenuto bez korisnika (raspored), **ne pitaj ništa**. Sve nejasno ide u odjeljak „Pitanja" prijedloga.
- Ako `tjedni-prijedlog/<tjedan>.md` već postoji, ne prepisuj odobrene stavke: dopuni samo ono što nedostaje.

## 1. Pregled prošlog i tekućeg tjedna
Iz `tjedni-prijedlog/` (tekući i prošli tjedan), `objavljeno/dnevnik.md` i `stanje/za-intakt.md`:
- što je objavljeno, što nije, što je odbijeno, što je **prebačeno** s jedne osobe na drugu;
- stavke s oznakom `H` (na horuk, skill `iskra-odmah`) računaj u kvotu tjedna u kojem su objavljene; stavke sa `Status: pomaknuto → <ovaj tjedan>` uzmi **prve**, s već napisanim tekstom (samo provjeri je li još aktualan), i one ulaze u kvotu ovog tjedna;
- ako u prijedlogu za ciljni tjedan već postoje stavke na horuk, ne prepisuj ih: plan složi oko njih;
- primijeni **pravilo 48 sati** (`pravila/teme-i-ritam.md`): nepregledano vrati u ideje;
- ako je Petra prebacila temu Sandri (ili obrnuto), osoba koja je predala dobiva u ovom prijedlogu **drugu temu iz svog područja**, da njezin broj objava ostane isti;
- upiši stanje u `mjerenje/tjedni-broj.md` (plan i odrađeno). Ako su 4 tjedna zaredom odrađena, u Pitanja stavi prijedlog za povećanje ritma.

## 2. Skupljanje novih ideja (samo na Sandrinom računalu; preskoči izvor koji ne postoji)
Svaku novu ideju zapiši kao datoteku u `ideje/` (format `ideje/_PREDLOZAK.md`, `unijela: sustav`), anonimizirano.
1. **Radionice:** `EDUKACIJE_MASTER.xlsx` (list Raspored, zaglavlje u 3. retku), samo za čitanje, openpyxl `read_only`. Promoviraju se samo redovi s `Tip` = **BT** (naše radionice) i **AKADEMIJA** (WIA akademija „Vrati si vrijeme", gdje je izvođač Sandra, Petra ili Danijela). Redovi `INTAKT` i `ROK` su interni termini klijenata i rokovi, **nikad** se ne spominju javno. Termini u idućih 6 tjedana bez oznake PARKIRANO trebaju najavu oko 3 tjedna prije i podsjetnik tjedan prije. Usporedi s `stanje/master-snimka.md`: ako je nekom retku nestala oznaka PARKIRANO (npr. Petrini računovodstveni seminari), to je **važna vijest** za vrh prijedloga. Ažuriraj snimku.
2. **Nove InTakt funkcije:** `git -C C:\Work\Products\Intakt-Suite\Intakt-WMS log --since=<zadnji pokretač> --no-merges --pretty=%s` i promjene u `docs/product/`. Traži funkcije koje su korisniku vidljive i koje su automatiziranije ili bolje od uobičajenog, odnosno rješavaju proces koji ljude koči svaki dan. Dubravko se ne spominje.
3. **Iskustva korisnika iz Sandrinog maila:** Zoho (accountId `7944683000000002002`), mailovi zadnjih 7 dana od korisnika i prospekata: pitanja, problemi, pohvale. **Ne prepisuj sadržaj maila u repozitorij**, samo anonimiziranu bit (`pravila/gdpr-ai-akt.md`). Petrin mail obrađuje njezin jutarnji zadatak, ne ovaj.
4. **Projekti u C:\Work:** `STATUS.md` datoteke promijenjene u zadnjih 7 dana (posebno `_BanTechnologies\AI\Clients`, `Products\Intakt-Suite\Korisnici`, `Partners`): lekcije iz prakse, uvođenja, radionice.
5. **Propisi:** postupak iz `zakoni/nadzor.md` (jednom za oba područja; Petrin Claude ih ne čita ponovno).
6. **Rokovi:** porezni i zakonski rokovi u idućih 3 tjedna (Petrino područje), samo iz službenog izvora.
7. Postojeće ideje sa `status: nova` i stari nacrti iz `ideje/_stari-nacrti.md`.

## 3. Odabir
Prema `pravila/teme-i-ritam.md`:
- broj objava po osobi (trenutno Sandra 2, Petra 1, blog 1 mjesečno);
- **težine:** najviše jedna teška po osobi, nikad dvije teške zaredom (gledaj obje osobe dan za danom);
- teške teme za tjedan +2 idu u odjeljak „Najava za tjedan +2" (tema, zašto, službeni izvori, što autorica treba proučiti), ne kao gotov tekst;
- oko 70 % pomaže, 30 % najave i prodaja; korisnik u prvom planu;
- najave radionica prema masteru;
- jedna tema, više formata: za tešku temu ponudi i izvedenice (kratka verzija za drugu osobu, Facebook grupa, pitanje za radionicu);
- nikad dvaput ista tema u 4 tjedna (provjeri `objavljeno/`).
Odabranim idejama postavi `status: u-prijedlogu`.

## 4. Pisanje
Za svaku objavu, u glasu autorice (`glas/<osoba>.md`; za Petru uzmi u obzir da je profil početni):
- **tekst objave**, prilagođen kanalu (LinkedIn: priča 150 do 450 riječi; Facebook stranica: kraće, konkretno; Facebook grupa: pomoć, bez reklame);
- **prvi komentar** samo kad ima smisla (opcija, ne pravilo);
- **3 do 5 hashtagova** (LinkedIn), za Facebook 0 do 2;
- **termin** (dan, sat) prema `pravila/teme-i-ritam.md`;
- **vizual** prema `pravila/vizuali.md` (vrsta, opis, putanja, alternativa). Odabranu postojeću sliku kopiraj u `tjedni-prijedlog/<tjedan>/`;
- **izvori**: odakle je svaka činjenica, brojka i citat (ideja, dokument, službeni link). Bez izvora nema tvrdnje;
- za **blog**: cijeli tekst s naslovom, opisom i frontmatterom za ciljni web (`pravila/blog-objava.md`), plus tekstovi za dijeljenje na LinkedInu i Facebooku za obje osobe.

## 5. Provjere (redom, za svaku objavu)
1. Agent `iskra-citatelj`: publika i AI ton. NE PROLAZI → prepiši i ponovi (najviše dvaput).
2. Agent `jelena`: lektura. Unesi ispravke.
3. Tip `zakon`: svaku tvrdnju o propisu provjeri u službenom izvoru i navedi broj NN ili CELEX. Nejasno → objava se ne piše, pitanje ide vlasnici teme.
4. Ručno: bez em-crtica, Dubravko se ne spominje, nitko nije imenovan bez privole.

## 6. Zapis prijedloga
Napiši `tjedni-prijedlog/<tjedan>.md`:

```
# Prijedlog objava · <tjedan> (<pon datum> do <pet datum>)
Složeno: <datum i sat> · Pregled do: petak 12:00 · Pravilo 48 h vrijedi

## Važno ovaj tjedan
(npr. seminar odparkiran, rok, zakon; ili „ništa posebno")

## Raspored
| ID | Dan i sat | Osoba | Kanal | Tema | Težina | Tip | Status |
(ID oblika W45-S1 za Sandru, W45-P1 za Petru, W45-B1 za blog)

## W45-S1 · <naslov>
Osoba · kanal · termin · težina · ideja: ideje/<datoteka>.md
**Zašto ova tema sada:** jedna rečenica
**Tekst:**
> ...
**Prvi komentar (opcija):** ...
**Hashtagovi:** ...
**Vizual:** vrsta · opis · datoteka · alternativa
**Izvori:** ...
**Provjere:** čitatelj <ocjena> · lektura <presuda> · (zakon: provjereno u <izvor>)
**Status:** predlozeno
**Odluka:** (upisuje iskra-pregled)

## Najava za tjedan +2 (teške teme)
## Izvedenice (jedna tema, više formata)
## Prijedlozi za mini alate
## Pitanja (za Sandru / za Petru)
```

## 7. Obavijest
- U Zohu napravi **nacrt** maila (nikad ne šalji; `mode: "draft"`, HTML) za `sandra@ban-technologies.com`, naslova `Iskra: prijedlog objava <tjedan>`: raspored, tekstovi Sandrinih objava, kratko o Petrinima, Pitanja.
- U `stanje/za-intakt.md` dodaj blok za dnevni zadatak Claude Desktopa: dva InTakt zadatka „Pregled prijedloga objava <tjedan>" (jedan Sandri, jedan Petri), rok petak 12:00, u opisu putanja do prijedloga i uputa „u Claudeu u projektu Objave napiši: pregledaj prijedlog".
- Ako je dostupna Windows obavijest (`C:\Work\Agents\tools\notify.py`), pošalji je.

## 8. Kraj
- Ažuriraj `stanje/zadnji-pokretac.md` (datum i sat, što je skupljeno, koliko ideja).
- Commit („iskra: prijedlog <tjedan>") i `git push`. Ako push ne uspije, zapiši to u `stanje/zadnji-pokretac.md`.
- Nikad ne objavljuj ništa, ne šalji mail i ne diraj web stranice.
