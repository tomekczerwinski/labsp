#!/bin/bash

clear

echo "Witaj w Detonatorze."
echo "Wprowadź liczbę minut do odliczenia."
echo -n "> "
read ileminut

ilesekund=$[$ileminut*60]

echo "Odliczanie będzie trwało $ilesekund sekund."

function list
{
  case "$1" in
	a)
		clear
		echo "1) Czas: $ilesekund sek. ($ileminut min.) - zmień."
		echo "2) Po zakończeniu: $pozak"
		echo "3) Rozpocznij odliczanie."
		echo "4) Zakończ"
		
		echo -n "> "
		read menu
		case "$menu" in
		1)
			echo
			echo "Wprowadź nowy czas"
			echo -n
			read ileminut
			ilesekund=$[$ileminut*60]
			list a
			;;
		2)
			list b
			list a
			;;
		3)
			dodaj
			list a
			;;
		4)
			clear
			exit 0
			;;
		*)
			clear
			echo "Błędny wybór..."
			sleep 2
			list a
		esac
		;;
	b)
		echo "1) Wyłącz komputer"
		echo "2) Uruchom ponownie"
		echo "3) Wykonaj polecenie"
		echo
		echo -n "> "
		echo
		read poz
		case "$poz" in
		1)
			pozak1="shutdown -h now"
			pozak="Wyłączenie komputera"
			;;
		2)
			pozak1="shutdown -r now"
			pozak="Ponowne uruchomienie komputera"
			;;
		3)	
			echo "Wprowadź dowolne polecenie systemowe."
			echo -n "> "
			read pozak1
			pozak="Polecenie systemowe: $pozak1"
			;;
		esac
		;;
	esac
}

function pokaz
{
	clear
	echo "Pozostało: $ilesekteraz sek. / $ilesekund sek. ($ileminut min.)"
	dodaj
}

function dodaj
{
	if [ "$ilesekteraz" = "$ilesekund" ]
	then
		$pozak1
	else
		if [ "$juz" = "tak" ]
		then
			sleep 1
			ilesekteraz1=$[$ilesekteraz+1]
			ilesekteraz=$ilesekteraz1
			pokaz
		else
			juz=tak
			pokaz
		fi
	fi
}

list a
