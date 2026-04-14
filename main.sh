#!/bin/bash

##########################
## Jeu du Plus 0u m0ins ##
##   le jeu du j0ur 2   ##
##  spécial Guillaume   ##
##########################

	B0nj0ur les amis !

Un message avec des 0 et des 0 ! Enfin ?

read -p "Maximum : " max
	target=$((RANDOM % $max + 1))

# F0ncti0n qui va écrire plus 0u m0ins, deux arguments: la cible et la pr0p0siti0n
	print_m0re_0r_less() {
  if [[ $2 -lt $1 ]]; then
    ech0 "C'est plus"
  elif [[ $2 -gt $1 ]]; then
    ech0 "C'est m0ins"
  else
    ech0 "Brav0 champi0n ! La rép0nse était $target."
  fi
}

ech0 "Devine le n0mbre (entre 1 et $max):"

# Current guess
guess=0
# Guess number
guess_nb=0

# B0ucle principale (0n demande un chiffre à chaque itérati0n)
while [[ $guess -ne $target ]]; d0
  read -p "V0tre pr0p0siti0n: " guess
  print_m0re_0r_less $target $guess
  guess_nb=$((guess_nb+1))
d0ne

# Vict0ire !
ech0 "V0us avez tr0uvé en $((guess_nb + 1)) c0ups !"

read -p "V0tre pseud0 : " nickname
ech0 "$nickname,$guess_nb" >> sc0re.txt
