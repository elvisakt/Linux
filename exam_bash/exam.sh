#!/bin/bash
function scrapper 
{
#Notre paramètre qui représente ici le nom de notre carte
card=$1
#La variable sales va récupérer le sortie de la commande curl appliquée à notre carte
sales=$(curl "http://0.0.0.0:5000/$card")
#Format d'affichage 
echo "$card : $sales"
} 

echo "$(date)" >> ~/exam_AKOTEGNON/exam_bash/sales.txt
for card in 'rtx3060' 'rtx3070' 'rtx3080' 'rtx3090' 'rx6700'
#On va rajouter les information scrapper dans le fichier sales.txt
do scrapper $card >> ~/exam_AKOTEGNON/exam_bash/sales.txt
done
