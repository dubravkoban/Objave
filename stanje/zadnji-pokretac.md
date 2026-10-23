# Zadnji pokretač

Zadnje pokretanje: **2026-10-23** (iskra-tjedan, u pozadini, bez korisnika) za tjedan **2026-W44**.

## Što je napravljeno
- Složen prijedlog `tjedni-prijedlog/2026-W44.md`: 3 objave (Sandra 2, Petra 1) + Najava za tjedan +2 + Izvedenice + Mini alati + Pitanja.
- Vizuali kopirani u `tjedni-prijedlog/2026-W44/` (S1 Sandra na nastupu, S2 InTakt snimka zaliha).
- Nacrt maila spremljen u Zoho Drafts („Iskra: prijedlog objava 2026-W44"), NIJE poslan.
- Dodana dva InTakt zadatka u `stanje/za-intakt.md` (pregled do petka 12:00, Sandra i Petra).
- Ažuriran `mjerenje/tjedni-broj.md` (plan 2/1/0).

## Skupljeni izvori ovog pokretanja
- **Master (`EDUKACIJE_MASTER.xlsx`, list Raspored):** pregledano; akademija kreće 5.11., BT radionice transparentnosti 3.11./10.11. Petrini računovodstveni seminari i dalje PARKIRANO (25.11., 2.12., 13.1., 10.2.). Snimka (`stanje/master-snimka.md`) aktualna, nema promjene PARKIRANO.
- **InTakt git (16.–23.10.):** samo interni rad (monitoring/oncall, demo, računovodstvene odluke), ništa gotovo i korisniku vidljivo → nema najave nove funkcije.
- **Sandrin mail (zadnjih 7 dana):** anonimizirani signali — pitanja poslije demo-a (radi li i obračun plaća/PDV/GFI), „pripremamo se za inventuru" kao razlog za odgodu, kupnja uz postojećeg ERP dobavljača. Iz toga: nova ideja `ideje/2026-10-23-sto-sustav-ne-radi-isto-je-vazno.md` i potvrda sezonske inventura teme.
- **STATUS.md (7 dana):** SOLIDARNA (AI), Prospekti (Eltor, KlimaCentar, Poljovrt), WIA — promijenjeni, ali bez novog javnog materijala.
- **Propisi (provjereno u izvoru):** Zakon o računovodstvu NN 85/2024, čl. 14. (inventura); Zakon o fiskalizaciji NN 89/2025 + Porezna uprava (eRačun, rokovi 1.1.2026./1.1.2027.).

## Nove/ažurirane ideje
- Nove: najava-radionice-ai-transparentnost-placa, inventura-priprema, eracun-fiskalizacija-2027, sto-sustav-ne-radi-isto-je-vazno (sve datum 2026-10-23).
- Status `u-prijedlogu`: najskuplja-rijec-otprilike, najava-radionice-ai-transparentnost-placa, inventura-priprema.

## Broj skupljenih ideja
4 nove idejne datoteke; 3 ideje stavljene u prijedlog.

## Git
- **Commit i push napravljeni.** `origin` (Azure DevOps `ban-tech/BanTech/_git/Objave`) postoji; `git push` je prošao (`main -> main`), commit „iskra: prijedlog 2026-W44". Petra povlačenjem vidi prijedlog.
- Napomena: na početku pokretanja grana `main` nije imala postavljen upstream, pa je `git pull` javljao „no tracking information". Sada je upstream postavljen (`git branch --set-upstream-to=origin/main main`) i `git pull` radi.
