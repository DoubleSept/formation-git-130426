#!/bin/bash

##########################
## Jeu du Plus ou moins ##
##   le jeu du jour 2   ##
##########################

input_is_number() {
  case $1 in
    ''|*[!0-9]*) echo 1 ;;
    *) echo 0 ;;
  esac
}


read -p "Maximum : " max
while [[ $(input_is_number $max) -ne 0 ]]; do
  echo "$max is not a number !"
  read -p "Maximum : " max
done
target=$((RANDOM % $max + 1))

# Fonction qui va écrire plus ou moins, deux arguments: la cible et la proposition
print_more_or_less() {
  if [[ $2 -lt $1 ]]; then
    echo "C'est plus"
  elif [[ $2 -gt $1 ]]; then
    echo "C'est moins"
  else
    echo "Bravo champion ! La réponse était $target."
  fi
}

echo "Devine le nombre (entre 1 et $max):"

# Current guess
guess=0
# Guess number
guess_nb=0

# Boucle principale (on demande un chiffre à chaque itération)
while [[ $guess -ne $target ]]; do
  read -p "Votre proposition: " guess
  print_more_or_less $target $guess
  guess_nb=$((guess_nb+1))
done

# Victoire !
echo "Trop fort, vous avez trouvé en $((guess_nb + 1)) coups !"

read -p "Votre pseudo : " nickname
echo "$nickname,$guess_nb" >> score.txt
