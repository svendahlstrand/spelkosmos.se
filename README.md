# Spelkosmos

## Första gången?

Om det är första gången du jobbar med webbplatsen, eller om du sitter vid en ny dator, behöver du sätta upp en arbetsmiljö först. Läs mer under [Kom igång på OS X][1]. Ibland måste du hoppa in i terminalen för att utföra kommandon. Det låter läskigt men är inte speciellt svårt. Läs [Introduction to the Mac OS X Command Line][2] för att komma igång snabbt.

## Förhandsgranska webbsidan lokalt.

Öppna terminalen, ställ dig i katalogen och kör `jekyll serve`.

```sh
cd Dropbox/spelkosmos
jekyll serve --drafts
```

Sen besöker du webbplatsen på adressen <http://localhost:4000>. För att stänga servern trycker du `ctrl` + `c` i terminalfönstret.

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
