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

**25.10.2018** versio 3.03.
