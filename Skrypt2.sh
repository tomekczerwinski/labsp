#!/bin/bash
echo ""
echo "[ JAKĄ GRE URUCHOMIĆ? WYBIERZ CYFRĘ Z LISTY: ]"
echo ""
select l in SOLITARE GOLLY MAHJONGG MINESWAPPER FREECELL SUDOKU WYJŚCIE
do
  case "$l" in
    "SOLITARE") /usr/games/sol ;;
    "GOLLY") golly ;;
    "MAHJONGG") /usr/games/mahjongg ;;
    "MINESWAPPER") /usr/games/gnomine ;;
    "FREECELL") /usr/games/sol --freecell ;;
    "SUDOKU") /usr/games/gnome-sudoku ;;
    "WYJŚCIE") exit ;;
  esac
break
done
