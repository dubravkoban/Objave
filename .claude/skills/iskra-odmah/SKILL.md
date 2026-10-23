---
name: iskra-odmah
description: Iskra — tema ili blog „na horuk", izvan tjednog prijedloga (nova vijest, zakon, događaj, inspiracija). Odmah napiše tekst s istim provjerama, ubaci ga u tekući tjedan i preslaže plan bez rušenja. Okidači „hitno", „na horuk", „odmah", „ubaci", „hoću danas/sutra objaviti", „imam ideju za blog sad".
---

# Iskra: objava izvan plana

Cilj: osoba može bilo kad dodati temu ili blog, a sustav to **upije**: tekst dobije iste provjere kao inače, ulazi u plan i plan se pametno preslaže.

## 1. Što i kada
- `git pull`. Odredi osobu (`git config user.email`) i učitaj `glas/<osoba>.md`.
- Pitaj samo ono što nedostaje (jednim pitanjem): o čemu je, kanal, **kada** želi objaviti (danas, sutra, ovaj tjedan). Ako je dala materijal (link, tekst, sliku), koristi ga.
- Napravi ideju u `ideje/` (kao `iskra-ideja`), s poljem `izvor: na horuk`.

## 2. Tekst
Isti postupak kao u `iskra-tjedan`, korak 4 i 5 (glas, vizual, izvori, `iskra-citatelj`, `jelena`; za zakon provjera u službenom izvoru). **Brzina ne skraćuje provjere.** Ako tema traži izvor koji ne možeš provjeriti, reci to odmah i predloži: objavu bez te tvrdnje ili pomak dok se ne provjeri.
- Blog: cijeli tekst + tekstovi za dijeljenje; objava na web tek na „može objava" (`pravila/blog-objava.md`).
- Pokaži tekst, primi odluku (odobri, izmijeni, odbij) kao u `iskra-pregled`, uključujući učenje stila.

## 3. Upis u plan
- Dodaj stavku u `tjedni-prijedlog/<tekući tjedan>.md` (ako termin pada u idući tjedan, u taj prijedlog; ako on još ne postoji, napravi ga samo s ovom stavkom i oznakom da ga srijedom dopuni `iskra-tjedan`). ID: `W45-S-H1` (H = na horuk), `Status: odobreno` nakon odobrenja.
- Odobreno ide u `stanje/za-intakt.md` i kalendar kao i ostale objave.

## 4. Preslagivanje (bez rušenja plana)
Objava na horuk **ulazi u kvotu** osobe za taj tjedan. Zatim provjeri plan tog tjedna i idućeg:
1. **Previše objava** za osobu ili **dvije teške zaredom** (gledaj obje osobe, dan za danom): predloži da se jedna planirana stavka **pomakne**, ne briše. Pomiče se ona koja **nije vezana uz datum** (priča, znanje); stavke vezane uz datum (najava radionice, rok, zakon od datuma) se ne diraju.
2. Pomaknuta stavka dobiva `Status: pomaknuto → <novi tjedan>` i ulazi u idući prijedlog kao prioritet, s već napisanim tekstom (ne piše se ponovno).
3. Ako je tema na horuk ista ili slična nekoj planiranoj, predloži spajanje umjesto dvije objave.
4. Ako je druga osoba trebala objaviti istu temu (npr. Sandra brže reagira na zakon iz Petrina područja), označi to i ponudi Petri kraću verziju ili dijeljenje, a ne dvostruku objavu.
5. Promjene drugoj osobi **samo predloži** i zapiši u njezin prijedlog pod „Promjene zbog objave na horuk"; njezine odobrene stavke ne mijenjaj bez nje.
6. Ne gomilaj: ako je osoba u tjednu već 2 objave iznad kvote, upozori i predloži pomak.

## 5. Kraj
Commit („iskra: na horuk <tema>") i `git push`. Kratki odgovor: što je dodano, kada ide, što se pomaknulo i kamo.
