* Zad. 1
```sh
grep . plik.txt
```

* Zad. 2
```sh
grep ^[0-9] pl*
```

* Zad. 3
```sh
ls -l | egrep ^.{8}r
```

* Zad. 4
Pierwsze Rozwiązanie:
```sh
grep -c bash /etc/passwd
```
Drugie Dobre Rozwiązanie:
```sh
grep -c /bash$ /etc/passwd
```

* Zad. 5
```sh
grep [IVXLCDM] plik.txt
```
or
```sh
egrep -iw [IVXLCDM]+ plik.txt
```
