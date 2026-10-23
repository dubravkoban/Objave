---
naslov: Postavka koja se uredno sprema i ne radi ništa
osoba: sandra
podrucje: kako-radimo
brend: bt
kanal: linkedin
tip: prica
tezina: srednja
rok:
izvor: 'Objave\arhiva\bt-idea-inbox.md (Intakt-WMS, dizajn dokument odnosa artikla i grupe artikala, 23.7.2026.)'
unijela: sandra
datum_unosa: 2026-07-24
privola: n/a
status: nova
---

## Ideja
Objava o tome da najopasnija greška u softveru nije ona koja pukne, nego ona koja tiho ne ispuni ono što ekran obećava. U vlastitom proizvodu našli smo postavku koja ima polja u bazi i ekran u aplikaciji, korisnik je može postaviti, a nijedan dio koda je nikad ne pročita. Poanta je metoda: kako takve stvari pronaći prije nego ih prijavi korisnik.

## Zašto (iz prakse)
23.7. smo završili dizajn dokument za odnos artikla i grupe artikala u InTaktu. Sažetak počinje rečenicom da je cijeli sloj nasljeđivanja postavki s grupe na artikl danas samo predstava. Nismo to otkrili iz prijave korisnika, nego zato što smo prije redizajna prošli sve putanje kojima se podaci čitaju.

## Primjer
Dva kvara jedan preko drugoga. (1) Grupa artikala ima „zadani način praćenja” i „zadani predložak radnog naloga”, a nijedan artikl se iz njih nikad ne popuni. (2) Forma artikla to polje ni ne može postaviti, vidi se samo staro polje da/ne, pa su nove vrijednosti stizale jedino preko API-ja. Obećanje „postavi zadano na grupi” bilo je razbijeno s obje strane. Drugi kut iz istog dokumenta: prava greška oko PDV-a nije bila to što artikli iste grupe imaju različite stope (to je zakonito), nego to što se nepostavljena stopa tiho računala kao 25 %.

## Napomena
Dokument se poziva na Zakon o PDV-u, čl. 38. i Direktivu Vijeća 2006/112/EZ. Ako objava spominje konkretne članke, obavezno ih provjeriti u izvornom tekstu (narodne-novine.nn.hr, eur-lex.europa.eu) prije objave. U izvoru je bio prijedlog za osobni LinkedIn na engleskom; InTakt kao primjer iz prakse, ne kao reklama. Publika su uglavnom netehnički menadžeri, pa tehničke pojmove (API, putanje čitanja) prevesti u svakodnevni jezik.
