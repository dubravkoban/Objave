---
description: Iskra — dnevni scan: pokupi promjene po Work projektima + vijesti, dodaj ideje u inbox, kratki brifing
argument-hint: "[bt | intakt | oba]  (default: oba)"
---

Pokreni Iskrin dnevni lagani capture. Budi jeftin i konkretan — ovo se vrti često.

Opseg iz "$ARGUMENTS" (ako prazno → oba branda).

1. Učitaj stanje relevantnog Content-Engine foldera/â (`Intakt-Suite-Marketing/Content-Engine/` i/ili `_BanTechnologies/Marketing/Content-Engine/`): `idea-inbox.md` (pročitaj `<!-- LAST-SCAN -->` marker), `content-calendar.md`, `published-log.md`, `sources.md`, `voice-*.md`. Gledaj samo aktivnost **od zadnjeg scana**.
2. Skupi što se radilo (jeftino, ne skeniraj cijeli disk):
   - `git log` od zadnjeg scana u repoima: `Products/BanTechnologiesCom`, `Products/Media Manager`, InTakt/Intakt landing repo;
   - datoteke izmijenjene zadnjih ~48h u marketing i aktivnim projekt folderima;
   - po potrebi 1–2 web pretrage na teme iz `sources.md` (samo ako danas ima smisla).
3. Predloži 1–3 ideje za post — svaku s **kontekstom iz prakse** (zašto je iskrsla + konkretan primjer), nikad sterilno. Poštuj 30/70 i pillare iz `sources.md`.
4. Dodaj ideje u odgovarajući `idea-inbox.md` (sekcija "Brzi unos", najnovije gore, **append-only**). Ažuriraj `<!-- LAST-SCAN -->` na današnji datum.
5. Daj Sandri brifing od **3–5 redaka**: što se radilo, koje ideje si dodala, stanje kalendara, ima li išta hitno.

Ne diraj kalendar ni objavljeno. Ne izmišljaj aktivnost — ako nema signala, reci to jasno.
