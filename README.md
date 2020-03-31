# test1

Testirepo, kokeillaan versionhallintaa Rmarkdown-tiedostoilla. Bookdown-paketti, pdf- ja html-tulostus.

# Kaksi Rmd-tiedostoa, gitbook-tulostusformaatti toimii

27.6.2018 - labeleita vanhalle versiolle, uusi kehitys-haaraan.

# HTML-tulostus toimii

2.7.2018 versio 2. Lähdeviitteet bib-tiedostoon toimivat. Viitteet kuviin, taulukoihin ja kaavoihin toimivat. Kaavojen, kuvien ja taulukoiden numerointi toimii. Scree-kuvaa ei ole tulostettu.

# PDF-tulostus

Uutta versiota tehdäänn haarassa kehitys2, pdf-tulostus toimimaan.

3.7.2018 Kehitys2 - yritetään saada pdf-tulostus toimimaan, ei vielä toimi. Haarasta löytyy myös html-tuloste ennen pdf-kokeiluja.

21.7.2018 Gitbook- ja PDF-tulostus toimivat. Kaavat, taulukot ja kuvat numeroituvat ja saavat suomenkieliset nimet. Muuten dokumentin asetukset ovat dookdown-demo- esimerkistä, ja preamble.tex - tiedostoa ei käytetä. Suurin virhe oli {equation}-tägien välisten kaavarivien väliset tyhjät rivit.

Tulosteet löytyvät alihakemistosta _book.

# Viimestelyä

**22.7.2018**
- lisättiin luku dokumenttien renderöintiprosessista. PDF-kuva näkyy vain pdf-tulosteessa.
- lisättiin luku dokumenttien renderöintiprosessista. PDF-kuva näkyy vain pdf-tulosteessa.
- pientä hienosäätöä gitbookissa, ja hieman lisää tekstiä bookdown- ja Rmarkdown - tulostusoptioista
- include_graphics - funktiolla saa ulkoisen kuvatiedoston html- ja pdf- formaattiin, jos kuva on png. PDF-kuvan saa vain PDF-tulosteeseen
- lähdeviitteet oudossa järjestyksessä
- gitbookissa ei saa koodilohkojen koodia piilotettua? code_folding: hide - asetus output.yml - tiedostossa tuottaa virheilmoituksen (pitäisi olla "theme"
  mutta gitbookilla on jo omansa). Jotenkin ne sieltä sivun alalaidasta taisivat kadota?

# Versio 3

- lisättu docs-hakemisto outputille -> voi julkaista Githubissa, kun merge->master
- ark-hakemistossa vanhat pdf-versiot
- tägätään, ja otetaan uusi haara kehityshommaan

## Versio 3.01

- julkaistu GitHubin www-palvelussa
- Gitbookin ylävalikossa PDF-tiedoston latauspainike

1.8.2018 versio 3.01, pikku korjailuja ja siistimistä. Gitbook-formaatissa ei toimi koodin piiloitus oletuksena (code_folding: hide). Vaatii jonkun teeman käyttämistä.

## Uusi kehityshaara

6.8.2018 uusi kehityshaara, ja yksi commit (alaviite). Ehkä myös muut perusmuotoilut voisi lyhyesti esitellä?

**25.10.2018** Ongemia MikTeX-pakettien kanssa, peruskäyttäjänä ladatut paketit kaipasivat päivityksiä. Katsoin puuttuvat paketit MikTeX-pakettihallintasovelluksella tavallisen käyttäjän oikeuksilla, ja asensin ne admin-oikeuksilla. Pieni kommentti tästä itse dokumenttiin.

**25.10.2018** versio 3.03. Ei kehitetä vähään aikaan, pikku muutoksia suoraan masteriin. Lisättiin viimeiseen lukuun png-kuvan pdf-versio, ei näy html-tulosteessa.

**26.10.2018** Lisättiin viimeisen luvun 5 loppuun lyhyt knitr-koodipätkä, joka kokoaa r-koodin yhdeksi listaukseksi. Toimii!

**4.12.2018** Siistittiin pois turhia vanhoja virheilmoituksia, lisättiin listaa käytännön vinkeista (aspect ratio, yhden rmd-tiedoston html-tulostus jne). MikTeX päivitysten testaus samalla. Versio 3.03 -> 3.05.

**18.12.2018** R- ja MikTeX- päivitysten jälkeen testattiin bookdownin Gitbook ja pdf-tulostus.

**21.12.2018** R-päivitys versioon 3.5.2, testaus. Testattu myös 5.1.2019 MikTeXin päivityksen jälkeen.

**20.3.2019** R-päivitys ja MikteX-päivitys, testaus.

**22.3.2019** Voiko rmd-tiedoston 1. rivillä olla myös toisen tason otsikko (##)? Voi näköjään, helpottaa isompien dokumettien jakamista pienempiin pätkiin. Tuottaa toki varoituksen.

**8.5.2019** R- ja MikTeX-päivitys, testaus.

**22.5.2019** R- ja MikTeX-päivitys, testaus.

**3.7.2019** Pieni lisäys YAML-optiosta prosessikuvaukseen.
**13.7.2019, 2.9.2019** R- ja MikTeX - päivitysten testaus. **Marginaalit leventyneet!**
**20.9.2019** R 3.6.0 -> 3.6.1, RStudio versioon 1.2.5001.
**24.10.2019** R- ja MikTeX - päivitysten testaus.
**28.10.2019** R-update testaus.
**12.12.2019** Rupdate, MikTeX update testaus.
**31.3.2020** Useita R- ja MikTeX-päivityksiä testailtu, ei muita muutoksia.
