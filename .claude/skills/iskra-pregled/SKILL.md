---
name: iskra-pregled
description: Iskra — pregled i odobravanje vlastitih objava iz tjednog prijedloga (odobri / izmijeni / odbij / prebaci), „objavila sam", „može objava" za blog; uči stil iz izmjena. Okidači „pregledaj prijedlog", „objavila sam", „može objava", „u redu je".
---

# Iskra: pregled i odobravanje

## 0. Tko i što
- `git pull`. Odredi osobu (`git config user.email`: sandra@ ili petra@; inače pitaj). Učitaj `glas/<osoba>.md`.
- Otvori najnoviji `tjedni-prijedlog/<tjedan>.md` (ili tjedan koji osoba navede).
- Pokaži joj **samo njezine** stavke (plus „Pitanja" za nju i „Važno ovaj tjedan"). Tuđe stavke ne mijenjaj.

## 1. Za svaku stavku pokaži cijeli tekst, vizual i termin, pa primi odluku
| Odluka | Što Iskra radi |
|---|---|
| **odobri** / „u redu je" | `Status: odobreno`. Ako je tip `zakon` ili se navode propisi, prije odobrenja pitaj: „Jeste li provjerili činjenice i izvore?" i upiši odgovor u `Odluka:`. (AI Act, čl. 50(4) i smjernice Komisije: izuzeće od označavanja vrijedi samo uz stvarnu ljudsku provjeru činjenica, `pravila/gdpr-ai-akt.md`.) |
| **izmijeni** (upute ili gotov tekst) | Prepravi ili preuzmi njezin tekst. Ako je izmjena veća od par riječi, ponovno lektura (`jelena`) i anti-AI provjera (`iskra-citatelj`), pa pokaži konačnu verziju. Zatim **učenje stila** (korak 3). |
| **odbij** | `Status: odbijeno`, razlog u `Odluka:`; ideji vrati `status: nova` ili `odbaceno` (pitaj). Ako razlog govori nešto o stilu ili temama, korak 3. |
| **prebaci** <drugoj osobi> | Stavka dobiva novu osobu i `Status: prebaceno` s napomenom. Tekst se prepisuje u glas druge osobe tek u idućem prijedlogu ili odmah ako to traže. Iduci prijedlog daje osobi koja je predala drugu temu iz njezina područja. |
| **pomakni** termin | Promijeni termin; pazi na pravilo „nikad dvije teške zaredom". |

## 2. Nakon odluka
Za svaku **odobrenu** objavu:
- U `stanje/za-intakt.md` dodaj blok za dnevni zadatak Claude Desktopa: InTakt zadatak „Objava: <kanal> · <tema>" za tu osobu, rok = termin objave, u opisu putanja do teksta.
- **Zoho kalendar**, ako su Zoho alati dostupni u ovoj sesiji (Sandrino računalo): događaj na Sandrinom kalendaru (caluid `011fc4e852fb4acdb99e74727b9be3c5`, Europe/Zagreb), naslov `Objava: <kanal> · <tema>`, u opisu cijeli tekst, prvi komentar, hashtagovi, putanja slike; `transparency` 1; podsjetnik 15 min. Za Petrine objave dodaj `petra@ban-technologies.com` kao sudionicu. Ako alata nema, upiši u `stanje/za-intakt.md` da događaj unese Claude Desktop.
- Postojeći događaj se ažurira (`update_event`), ne duplicira. Brisanje nije moguće preko API-ja: reci osobi koji događaj da obriše.
- **Blog** se NE objavljuje na „odobri". Objavljuje se tek na izričito „može objava" za taj blog, po `pravila/blog-objava.md`.

Za **„može objava"** (blog): postupak iz `pravila/blog-objava.md`, pa ponudi tekstove za dijeljenje.

Za **„objavila sam"** (s tekstom ili bez): upiši u `objavljeno/dnevnik.md` tekst kako je objavljen (pitaj ga ako ga nema, ili uzmi odobreni). Ako se razlikuje od odobrenog, korak 3. Ideji postavi `status: objavljeno`. Pitaj ima li odaziva (upit, prijava) za `mjerenje/tjedni-broj.md`.

## 3. Učenje stila
Kad se konačni tekst razlikuje od prijedloga:
1. Zapiši u `glas/izmjene/<GGGG-MM-DD>-<osoba>.md`: prijedlog → konačno (samo izmijenjeni dijelovi), i za svaku izmjenu **predloženo pravilo** u jednoj rečenici („Petra ne otvara pitanjem nego scenom"), označeno `nepotvrđeno`.
2. Ne mijenjaj `glas/<osoba>.md` sam. Kad postoje 3 ili više nepotvrđenih pravila, ili je prvi pregled u mjesecu, na kraju pregleda pokaži ih i pitaj: potvrdi / odbaci / preformuliraj. Potvrđena pravila upiši u `glas/<osoba>.md` pod „Naučeno iz izmjena" (datum, pravilo, primjer prije → poslije) i označi ih u datoteci izmjena.
3. Isto pravilo koje se ponovi u 3 izmjene predloži izričito: „Ovo ispravljaš već treći put, da ga upišem?"

## 4. Kraj
- Commit („iskra: pregled <tjedan> <osoba>") i `git push`.
- Kratki sažetak: koliko odobreno, izmijenjeno, odbijeno, prebačeno, što je otišlo u kalendar i InTakt, što još čeka.
