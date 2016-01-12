# Spelkosmos

## Kom igång

Du behöver installera `Ruby`, `bundler` och `git` (eller `GitHub Desktop`).

### Om du kör OS X

Börja med att installera [Homebrew][1]. Resten gör du i terminalen, börja med att installera `rbenv` och `git`:

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

Nu ska allt vara klart, bra jobbat! Kör `rake test` för att se så allt fungerar.

## Förhandsgranska webbsidan lokalt.

Öppna terminalen, ställ dig i katalogen och kör `jekyll serve`.

```sh
cd Dropbox/spelkosmos
jekyll serve --drafts
```

Sen besöker du webbplatsen på adressen <http://localhost:4000>. För att stänga servern trycker du `ctrl` + `c` i terminalfönstret.

[1]: http://brew.sh
