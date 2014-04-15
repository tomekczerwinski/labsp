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
