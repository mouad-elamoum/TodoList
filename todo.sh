echo "bienvenue dans la todo list, que voulez vous faire: 1 ajouter une tache , 2 la supprimer, 3 afficer les tâches ou 4 revenir au message d'acceuil: "

read -p "entrez le nombre correspondant à la tache voulu: " nombre

while [ $nombre -eq 1 ]
do
    touch tasks.txt
    read -p "entrez la tache voulu: (exemple faire les courses,etc) " tache
    echo "$tache" >> tasks.txt
    echo "le contenue de tasks.txt est: " 
    cat tasks.txt

elif [ $nombre -eq 2 ]



elif [ $nombre -eq 4 ]
then
    echo "bienvenue dans la todo list, que voulez vous faire: 1 ajouter une tache , 2 la supprimer, 3 afficer les tâches ou 4 revenir au message d'acceuil: "
    read -p "entrez le nombre correspondant à la tache voulu: " nombre

fi 
done