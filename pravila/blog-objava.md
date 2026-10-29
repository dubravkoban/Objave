# Blog: od odobrenja do objave

> Dogovor sa Sandrom 23.10.2026.: blog odobrava **autorica tog bloga** (Sandra svoj, Petra svoj). Kad za konkretan blog napiše „u redu je" ili „može objava", Iskra ga objavljuje. Bez toga se ne objavljuje ništa.

## Koraci (skill iskra-pregled, nakon „može objava")
1. Provjeri da je odobrenje izričito i za **taj** blog, i da ga je dala autorica. Odobrenje druge osobe ne vrijedi.
2. Prije objave obavezno: lektura (agent `jelena`, presuda ODOBRENO ili ODOBRENO UZ ISPRAVKE s unesenim ispravcima), anti-AI provjera, i za zakonske teme provjera citiranih propisa u službenom izvoru. Ako je autorica nakon toga mijenjala tekst, lektura se ponavlja.
3. Pripremi datoteku u repozitoriju weba (odvojeno za svaki web, dolje), `git pull`, commit **samo te datoteke** (i slike), push. Kuke u repozitoriju (pre-commit provjera termina) moraju proći; **nikad `--no-verify`**.
4. Pričekaj objavu (Vercel, obično 1 do 3 minute) i provjeri da adresa vraća stranicu (HTTP 200) i da je naslov ispravan.
5. **Indeksiranje** (na Sandrinom računalu, ili zadatak za Sandru): `seo-monitor indexnow --site intakt --urls <adresa>` i u Google Search Consoleu „Pregled URL-a" → „Zatraži indeksiranje" za novu adresu. Google Indexing API se ne koristi (Google ga dopušta samo za oglase za posao i prijenose uživo).
6. Upiši u `objavljeno/dnevnik.md` i postavi ideju na `status: objavljeno`.
7. Odmah ponudi **tekstove za dijeljenje**: LinkedIn (autorica, i kratka verzija za drugu osobu) i Facebook (stranica brenda, i verzija za grupe ako je tema za njih). Ti tekstovi prolaze iste provjere i ulaze u prijedlog sljedećeg tjedna ako nisu odmah odobreni.

## InTakt web (intakt-suite.com)
- Repozitorij: `C:\Work\Intakt-Suite-Marketing\Landing Page` (grana `main`, Vercel objavljuje nakon pusha).
- Datoteka: `content/blog/hr/<slug>.md` (i `content/blog/en/<slug-en>.md` ako postoji EN verzija). Uzorak frontmattera: `content/blog/hr/sidrene-cijene-besplatni-cjenik.md` (title, description, date, published: true, tag, tagLabel, readTime, thumbnail, thumbnailImage, ogUrl, altSlug kad postoje dvije jezične verzije).
- Slika: `public/assets/blog-<tema>.jpg`.
- Adresa: `https://intakt-suite.com/hr/blog/<slug>`.

## BT web (ban-technologies.com)
- Repozitorij: `C:\Work\Products\BanTechnologiesCom` (grana `master`, Vercel).
- Blog je u `content/blog/<serija>/NN-<slug>.md` s `index.md` po seriji (frontmatter: title, description, date, author, tags, type, draft, order, pillar). Trenutno postoji samo engleska serija `ai-augmented-development`.
- **Prvi hrvatski BT blog:** prije objave provjeri u `src/lib/blog.ts` kako se rješavaju jezik i serija, napravi novu seriju samo ako treba, lokalno pokreni `npm run build` i tek onda push. Ako nešto nije jasno, pitaj Sandru umjesto da mijenjaš kod weba.
- Na glavnu granu Claude inače ne gura sam. Iznimka vrijedi **samo** za blog datoteke i njihove slike, i samo uz izričito odobrenje autorice tog bloga. Sve ostale promjene weba idu po starom pravilu.

## Unutarnje poveznice (svaki blog)
- U novom blogu **2 do 3 poveznice** na srodne postojeće članke ili stranice proizvoda.
- **Barem jedan stariji članak** dobiva poveznicu na novi (ista objava, isti commit kao blog; mijenja se samo tekst članka).
- Tekst poveznice opisuje cilj i nosi ključnu riječ („program za skladište", „radni nalozi za instalatere"), nikad „ovdje", „klikni", „više".
- Poveznice prirodno u rečenici, ne popis na kraju.

## Što se nikad ne radi
- Objava bez izričitog „može objava" autorice.
- Izmjena koda, izgleda ili drugih stranica weba u sklopu objave bloga.
- Objava teksta koji nije prošao lekturu nakon zadnje izmjene.
