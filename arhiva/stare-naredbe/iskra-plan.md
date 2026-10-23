---
description: Iskra — složi/osvježi mjesečni plan objava (30/70) iz inboxa; puni samo prazne termine
argument-hint: "<mjesec> [bt | intakt]"
---

Složi ili osvježi mjesečni kalendar objava za Iskru.

Iz "$ARGUMENTS" pročitaj mjesec i (opcionalno) brand. Ako brand nije jasan, kratko pitaj.

1. Učitaj tog branda: `content-calendar.md`, `idea-inbox.md`, `published-log.md`, `sources.md`, `voice-*.md`. (Ako `content-calendar.md` ne postoji za BT, kreiraj ga po uzoru na InTakt kalendar.)
2. Popuni **samo prazne** termine za traženi mjesec. NE diraj retke sa statusom `zakazano`/`objavljeno`, ne prepisuj postojeće, ne regeneriraj cijeli plan.
3. Teme biraj iz inboxa (uklj. backlog nacrta) + pillara. Drži omjer **~30% prodajno / ~70% znanje-priče**. Rasporedi po kanalima branda, bez vikenda osim ako tema traži.
4. Svaki termin: datum · kanal · pillar · tip (P/Z) · naslov/koncept (1 rečenica) · status `ideja`.
5. Prikaži gotov plan kao tablicu i pitaj Sandru što dotjerati prije spremanja. Spremi u `content-calendar.md`.

Ideje iskorištene iz inboxa označi kao uvrštene, ali **ne briši ih** dok se ne objave.

## Povezani sustav: raspored radionica → plan objava → Zoho kalendar (Sandra, 18.10.2026.)

Ovo su tri dijela JEDNOG sustava i moraju se uvijek slagati:

1. **Izvor istine za radionice/predavanja** = `C:\Work\Objave\EDUKACIJE_MASTER.xlsx` (list Raspored).
2. **Plan objava** = `content-calendar.md` branda (BT: `_BanTechnologies/Marketing/Content-Engine/`). Promotivne objave za radionice planiraju se prema datumima iz mastera.
3. **Zoho kalendar** (Sandrin, caluid `011fc4e852fb4acdb99e74727b9be3c5`, Europe/Zagreb): **svaka objava iz plana ima svoj događaj** na dan i sat objave.

**Kad god se doda ili promijeni događaj u masteru** (novi termin, premještanje, otkazivanje): provjeri i ažuriraj plan objava (pomakni/dodaj/makni promotivne objave) **i** odgovarajuće Zoho događaje (`ZohoCalendar_update_event` / `add_event`; brisanje ne postoji preko API-ja, pa Sandri reci koji događaj da obriše ručno). Isto obrnuto: promjena datuma objave u planu = promjena Zoho događaja.

**Zoho događaj za objavu sadrži:** naslov `Objava: <kanal> · <tema>`; u opisu cijelo tijelo objave, prvi komentar, hashtagove, koga označiti, putanju do slike i nacrta; `transparency` 1 (ne blokira vrijeme); podsjetnik. **Slika kao prilog:** Zoho kalendar privitke podržava (u web sučelju), ali Claudeovi `ZohoCalendar_*` alati (add/update/patch, provjereno 18.10.2026.) nemaju polje za privitak. Ako se u konektoru pojavi alat za privitke događaja, koristi njega. Dok ga nema: u opis događaja upiši putanju do slike da je Sandra doda jednim klikom, i napravi Zoho **nacrt maila Sandri** (`sandra@ban-technologies.com`, `mode: draft`, HTML) sa slikom u privitku i istim tekstom, naslova `Objava <datum>: <tema> (tekst + slika)`, i u opisu događaja napiši da je slika u Drafts pod tim naslovom. Nikad ne šalji.

**Prije nego objava dobije status `odobreno` i ode u kalendar, obavezno:**
- **Lektura:** agent `jelena` (hrvatski standard), ispravke unijeti.
- **Sandrin glas:** provjera prema `voice-*.md` i pravilima iz glavnog `CLAUDE.md` (bez crtica, topla prva osoba, CTA u prvi komentar, bez refleksivnog „si”, Dubravko se javno ne spominje).
- **Protuagent (kupac):** pokreni agenta koji igra tipičnog kupca te ponude (npr. HR voditeljica u MSP-u za transparentnost plaća; računovođa za Petrine seminare; vlasnica malog obrta za akademiju) i provjeri je li mu vrijednost jasna i što mu fali da klikne. Uvaži samo prijedloge koji ne izmišljaju sadržaj.
- Zakon/direktiva u tekstu: provjera u službenom izvoru.
