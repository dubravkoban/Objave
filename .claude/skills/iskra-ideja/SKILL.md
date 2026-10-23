---
name: iskra-ideja
description: Iskra — zabilježi ideju za objavu u ideje/ (jedna datoteka po ideji), s kontekstom iz prakse. Okidači „pošalji Iskri", „za Iskru", „ovo je dobra tema za post", „@Iskra", „ideja za objavu".
---

# Iskra: nova ideja

1. `git pull` u korijenu repozitorija Objave.
2. Odredi tko unosi (`git config user.email`: sandra@ ili petra@; inače pitaj).
3. Iz razgovora izvuci: o čemu je objava, **zašto je ideja nastala** (stvarna situacija iz prakse), konkretan primjer, izvor, datum. Ako nešto od toga nedostaje, pitaj jednom kratko, a ako osoba ne zna, upiši ono što imaš.
4. Popuni `ideje/_PREDLOZAK.md` i spremi kao `ideje/<GGGG-MM-DD>-<kratki-slug>.md`:
   - `osoba` i `podrucje` prema `pravila/teme-i-ritam.md` (Sandra: AI, HR i plaće, WMS, skladište, radni nalozi, InTakt; Petra: računovodstvo, porezi, eRačun, fiskalizacija);
   - `tezina` prema istoj datoteci;
   - **privola:** ako se spominje stvaran korisnik ili osoba, provjeri `TESTIMONIALS.md`. Bez upisane privole: u odjeljke Ideja i Primjer piši anonimizirano (pravila u `pravila/gdpr-ai-akt.md`), a ime samo u Napomenu kao „interno: ..., ne spominjati javno". Ne prepisuj sadržaj mailova, samo anonimiziranu bit.
   - Ako se ideja tiče propisa, u Napomenu stavi službeni izvor ili „izvor provjeriti".
5. Ako postoji vrlo slična ideja (pretraži `ideje/` po ključnim riječima), dopuni nju umjesto nove datoteke.
6. Commit („ideja: <naslov>") i `git push`.
7. Odgovori u dvije rečenice: što je zabilježeno i u koju datoteku (puna putanja).

Ne piši gotov tekst objave ovdje (to radi tjedni prijedlog), osim ako osoba to izričito traži.
