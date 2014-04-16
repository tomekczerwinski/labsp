###POLECENIE 1

grep "00.00" dok1.txt > nowy.txt | grep "00.00" dok2.txt >> nowy.txt

###POLECENIE 2
sort dok1.txt dok2.txt > nowy.txt


#PROGRAM WYPISUJĄCY PIERWSZE POCZĄTKOWE LICZBY PARZYSTE O PODANYM ARGUMENCIE

#!/bin/bash

a=0
b=0

for((b=0;b<$1;b++))
do
	echo $a
	((a=a+2))

done


#SKRYPT OBLICZAJACY SUME KWADRATÓW LICZB 1,2 ... $1
#JEŻELI PODAM 3 MA BYĆ 1^2 + 2^2 + 3^2 = 14
#!/bin/bash

a=0
b=0
for((b=1;b<=$1;b++))
do

	((a=a+b*b))

done

echo $a





###SKRYPT SPRAWDZA ROZMIARY PLIKÓW


#!/bin/sh

# var1 contains size of file1
var1=$(stat -c%s dok1.txt)
# var2 contains size of file2
var2=$(stat -c%s dok2.txt)
if [ "$var1" -lt "$var2" ]; then
echo 'RÓŻNE'
elif [ "$var1" -gt "$var2" ]; then
echo 'RÓŻNE'
elif [ "$var1" -eq "$var2" ]; then
echo 'JEDNAKOWE'
fi






#PROGRAM USUWAJACY PLIKI Z ROZSZERZENIEM .$2 I ZMIENIAJACY ROZSZERZENIE W KATALOGU
#PLIKÓW Z ROZSZERZENIEM .$1 NA .$2

#!/bin/bash


rm -r *."$2"

for file in *.$1 ;
do
	leftname=`basename $file $1`
	mv $file ${leftname}$2
done




##skrypt o dwóch argumentach, który sprawdza, czy w katalogach o pełnych
## nazwach ścieżkowych $1 i $2 powtarza się jakaś nazwa pliku (i na końcu wyświetla
##odpowiedni komunikat).

opwd=$PWD
jest="Nie ma"
cd $1
for plik1 in *; do
   cd $2
   for plik2 in *; do
      if [ $plik1 == $plik2 ]
      then jest="Jest"
      fi
   done
done
echo $jest
cd $opwd
exit 0



#skrypt, który wyświetli nazwę i rozmiar tego pliku w bieżšcym katalogu,
#który ma największy rozmiar.

declare -i max rozmiar
max=-1
for plik in *
do
   rozmiar=`cat $plik|wc -c`
   if [ $rozmiar -gt $max ]
   then nazwa=$plik
        max=$rozmiar
   fi
done
echo $nazwa $max
exit 0




#Ponizszy skrypt sumuje jedynie rozmiary plikow zwyklych,
#a nie uwzglednia rozmiarow samych katalogow

declare -i suma=0

sum() {
   for plik in $(ls -A); do
      if [ -d $plik ]
      then cd $plik
           sum
           cd ..
      else suma=suma+$(cat $plik|wc -c)
      fi
   done
   return
}

opwd=$PWD
cd $1
sum
cd $opwd
echo "Suma rozmiarow: $suma"
exit 0



#skrypt o dwóch argumentach wywołania (pierwszym liczbowym, a drugim
#napisowym), który $1 razy wywietli napis $2 (wskazówka: użyć nowszej formy
#polecenia "for").

declare -i k
for ((k=0;k<$1;k++))
   do echo $2
done
exit 0



##ILE W KATALODU PLIKÓW CO MINUTĘ


while true
do
ls -1 | wc -l
sleep 300
done
