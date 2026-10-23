# BT — Inbox ideja (Iskra)

> Ideje za Ban Technologies objave (LinkedIn osobni / firma, BT blog): thought leadership, kako gradimo, AI, consulting.
> Padaju ovdje iz BILO KOJEG projekta pod Work (reci *"pošalji Iskri"* / *"stavi na popis za post"*). Append-only.
> `/iskra-plan` iz ovoga puni kalendar. Objavljeno seli u published-log.md.

<!-- LAST-SCAN: 2026-07-24 -->

## Brzi unos (najnovije gore)

<!-- Format:
### <tema>  ·  <YYYY-MM-DD>  ·  izvor: <projekt/sesija>  ·  pillar: <...>
- **Ideja:** ...
- **Zašto (iz prakse):** ...   ← stvarni use-case, NE sterilno
- **Primjer:** ...
- **Kanal/prijedlog:** LinkedIn osobni / firma / blog
-->

### Značajka koja je postojala u UI-ju, u bazi i ni u jednoj liniji koda  ·  2026-07-24  ·  izvor: Intakt-WMS, design doc Item ↔ ItemGroup (23.7.)  ·  pillar: `lessons-from-building`

- **Ideja:** Post o "inheritance theater". U vlastitom proizvodu smo našli funkcionalnost koja ima polja u bazi, ima ekran u aplikaciji, korisnik ju može postaviti, i nijedan code path je nikad ne pročita. Postavka se uredno sprema i ne radi ništa. Poanta: najopasniji bug nije onaj koji pukne, nego onaj koji tiho ispuni obećanje koje je dao UI, a nije ga ispunio kod.
- **Zašto (iz prakse):** 23.7. je završen konsolidirani design doc za odnos Item ↔ ItemGroup u Intakt-WMS-u i executive summary počinje rečenicom da je cijeli sloj nasljeđivanja atributa danas kazalište. Nismo to našli od klijentove prijave, našli smo to jer smo prije redizajna prošli sve putanje čitanja. To je post o metodi, ne o bugu.
- **Primjer:** dva sloja kvara jedan preko drugoga. (1) Grupa artikala ima "zadani način praćenja" i "zadani predložak radnog naloga", nijedan artikl se iz njih nikad ne popuni. (2) Forma artikla ne može ni postaviti to polje, izloženo je samo staro da/ne polje, pa su nove vrijednosti dolazile jedino kroz API. Obećanje "postavi zadano na grupi" bilo je razbijeno s obje strane. Drugi kut iz istog dokumenta: prava greška oko PDV-a nije bila da artikli iste grupe imaju različite stope (to je zakonito), nego tihi fallback nepostavljene stope na 25%.
- **Napomena za nacrt:** dokument se poziva na HR ZoPDV čl. 38 i EU Direktivu 2006/112/EZ. Ako post spominje konkretne članke, **obavezno provjeriti izvorni tekst** (EUR-Lex / Narodne novine) prije objave, ne iz sjećanja.
- **Kanal/prijedlog:** LinkedIn osobni (EN), InTakt kao case study a ne pitch

---

### Najbolja stvar koju sam ovaj mjesec napravila za klijenta: rekla sam mu da nešto NE gradimo  ·  2026-07-24  ·  izvor: AI consulting projekt (neprofitni sektor), sesija 20.–24.7.  ·  pillar: `clients-real-problem`

- **Ideja:** Post o disciplini opsega. Klijent ima ručni tjedni proces koji vrišti "automatiziraj me", ROI je očit, i ja sam ga imala u analizi kao prioritet. Onda je na sastanku ispalo da im u desetom mjesecu dolazi CRM koji taj isti proces pokriva nativno. Preporuka: ne gradimo. Poanta posta: consultant koji naplaćuje po isporuci ima strukturni poticaj graditi. Vrijednost je u tome da to ne napraviš.
- **Zašto (iz prakse):** Doslovno se dogodilo 20.7. i prepisala sam analizu 24.7. U dokumentu piše "BT NE gradi automatizaciju tjednog uvoza uplata (bio bi dupli posao)", iako je ista stavka dva odlomka iznad označena kao "✅ Visok ROI". Ta dva reda jedan do drugoga su cijeli post.
- **Primjer:** Iz iste analize, isto načelo primijenjeno drugdje: onboarding donatora se NE gradi jer to Mailchimp journeys već rade nativno. Pravilo koje se iskristaliziralo: prvo nativni alati, pa tek onda custom. I šire: automatizacija skida **mehanički** dio (podsjećanje, praćenje, uvoz podataka, predlošci), ne dio prosuđivanja, odnosa i pisanja.
- **Napomena:** klijenta NE imenovati bez pristanka (pravilo iz `TESTIMONIALS.md`). Piši kao "neprofitna organizacija" / "klijent iz neprofitnog sektora".
- **Kanal/prijedlog:** LinkedIn osobni (EN), jak kandidat i za BT blog

---

### Screening prije strategije: šest razgovora 1-na-1 i tri pretpostavke koje su pale  ·  2026-07-24  ·  izvor: AI consulting projekt (neprofitni sektor), tjedan 17.–24.7.  ·  pillar: `clients-real-problem`

- **Ideja:** Post o tome zašto AI/automatizacijska strategija počinje s razgovorima sa svakom osobom pojedinačno, a ne s alatima. Tema: što klijent traži nije isto što je klijentu problem, a to se vidi tek kad razgovaraš sa svakom ulogom zasebno.
- **Zašto (iz prakse):** Ovaj tjedan sam odradila screening s pola tima i svaki razgovor mi je oborio nešto što sam mislila da već znam. Nisu to bile nijanse, bile su to stvari na kojima bi opseg posla stajao krivo.
- **Primjer:** Tri konkretna ispravka iz tog tjedna: (1) mislila sam da voditeljica fundraisinga vodi novi CRM, a ona samo odgovara na upite vanjske tvrtke koja ga uvodi, potpuno druga osoba je vlasnik teme; (2) u bilješci mi je stajalo da imaju osnovni Copilot, IT je 24.7. potvrdio da Copilot, Power Automate Premium i Teams Premium **ne postoje**, što ruši pola predloženih flowova; (3) mislila sam da su procesi novi pa ih ne treba dirati, a projekt je zapravo peto izdanje, uhodan je i savršeno je zreo za automatizaciju. Kut: "to nisu bili loši dokumenti, bili su to dobri dokumenti koje sam krivo pročitala jer nisam razgovarala s dovoljno ljudi."
- **Napomena:** anonimizirati uloge (voditeljica fundraisinga, IT), bez imena organizacije i osoba.
- **Kanal/prijedlog:** LinkedIn osobni (EN)

---
