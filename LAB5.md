Zad. 1
```sh
find ~/ -maxdepth 1 -type f -mtime -10
```

Zad. 2
```sh
find  / -name \*config\* -type f 2> /dev/null
```

Zad. 3
```sh
find ~/ -atime 20
find -mtime -20 | egrep -v "/.git"
```

Zad. 4
```sh
find /etc \( -type f -and -name a* \) -or \( -type d -and ! -empty \) 2> /dev/null
```
(Polecenie nie do końca poprawne - w podkatalogach nie wyznacza plików rozpoczynających się na "a")

Zad. 5
```sh
rm x??
```

Zad. 6
```sh
mkdir date +%Y-%m-%d
```