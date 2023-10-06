echo "=================================================================================================================="
echo "bienvenue dans la todo list, que voulez vous faire: 1 ajouter une tache | 2 la supprimer | 3 l'afficher  "
echo "=================================================================================================================="

read -p "entrez le nombre correspondant à la tache voulu: " nombre

while [ $nombre -eq 1 ]
read -p "entrez le nombre correspondant à la tache voulu: " nombre
do
if [ $nombre -eq 1 ]
then
    touch tasks.txt
    read -p "entrez la tache voulu: (exemple faire les courses,etc) " tache
    echo "$tache" >> tasks.txt
    nl -ba tasks.txt
    
elif [ $nombre -eq 2 ]
then
    nl -ba tasks.txt
    read -p "entrez le numéro de la tâche a supprimer : " numTache
    read -p "entrez le nombre correspondant à la tache voulu: " nombre
    gsed -i "${numTache}d"  tasks.txt
    nl -ba tasks.txt

elif [ $nombre -eq 3 ]
then
    cat -n tasks.txt
fi 

done

if [ $nombre -eq 3 ]
then
    cat -n tasks.txt
fi 

#commentaire: