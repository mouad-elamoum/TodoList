echo "bienvenue dans la todo list, que voulez vous faire: 1 ajouter une tache , 2 la supprimer, 3 afficer les tâches ou 4 revenir au message d'acceuil: "

read -p "entrez le nombre correspondant à la tache voulu: " nombre

while [ $nombre -eq 1 ]
do
read -p "entrez le nombre correspondant à la tache voulu: " nombre
if [ $nombre -eq 1 ]
then
    touch tasks.txt
    read -p "entrez la tache voulu: (exemple faire les courses,etc) " tache
    echo "$tache" >> tasks.txt
    nl -ba tasks.txt

elif [ $nombre -eq 2 ]
then
    read -p "entrez le numéro de la tâche a supprimer : " numTache
    gsed -i "${numTache}d" tasks.txt
    nl -ba tasks.txt
fi 
 
done