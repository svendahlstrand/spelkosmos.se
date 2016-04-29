# Spelkosmos

> Sitter du vid en ny dator? Då behöver du sätta upp en arbetsmiljö. Läs hur här: [Kom igång på OS X][1].

## Förhandsgranska webbplatsen lokalt.

När du vill se hur webbplatsen ser ut kör du `script/server`. Efter en kort stund bör din webbläsare automatiskt öppna adressen <http://localhost:4000>.

Om du vill förhandsgranska utkast (de avsnitt som ligger i mappen `_drafts`) kör du `script/server-drafts`.

## Testa webbplatsen

Det finns ett gäng automatiska tester du kan köra, för att se om webbplatsen mår bra. När du kör testerna kan du upptäcka trasiga länkar och bilder samt fel i HTML-filer och RSS:en.

För att testa webbplatsen kör du `script/test`. Du kan även välja att inkludera utkast (avsnitt i mappen `_drafts`) med `script/test-drafts`.

## iTunes-recensioner

Filen `_data/reviews.json` innehåller recensioner av podcasten från iTunes. För att få in de senaste recensionerna i filen kör du skriptet `script/update-reviews`.

I Jekyll-mallarna kommer du åt recensionerna via variablen `site.data.reviews`.

## Kom igång på OS X

Du behöver installera `Ruby`, `bundler` och `git` (eller `GitHub Desktop`). Det finns lite olika tillvägagångssätt och här beskriver jag ett.

Börja med att installera [Homebrew][3]. Resten gör du i terminalen, börja med att installera `rbenv` och `git`:

```sh
brew install git rbenv
```

Följ sedan instruktionerna för `rbenv`:

```sh
rbenv init
```

Klona detta repository och ställ dig i katalogen:

```sh
git clone git@github.com:spelkosmos/spelkosmos.github.io.git
cd spelkosmos.github.io
```

Installera Ruby:

```sh
rbenv install
```
Installera och kör `bundler`:

```sh
gem install bundler
bundle install
```

Nu är du klar, bra jobbat! Kör `rake test` för att se så allt fungerar. Sen är det bara att börja jobba.

[1]: #kom-igång-på-os-x
[2]: http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line
[3]: http://brew.sh
