# Zadania

Laboratorium 2.

1. Wyświetl na ekren 4 ostatnie wiersze pliku *program.c*:

```sh
tail -n 4 program.c
```

Laboratorium 3.

8. Zlicz wszystkie pliki znajdujące się w katalogu /etc i jego podkatalogach.

```sh
find etc -type f -follow | wc -l
```

9. Zlicz ilosc znakow z 3 pierwszych lini pliku /etc/passwd.

```sh
cat /etc/passwd/ | head -n 3 | wc -m
```