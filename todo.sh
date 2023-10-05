echo "bienvenue dans la todo list, que voulez vous faire: 1 ajouter une tache  , 2 la supprimer ou 3 afficer les tâches: "

read -p "entrez le nombre correspondant à la tache voulu: " nombre

if [ $nombre -eq 1 ]
then
    touch tasks.txt
    read -p "entrez la tache voulu: (exemple faire les courses,etc) " tache
    echo "$tache" >> tasks.txt
    echo "le contenue de tasks.txt est: " 
    cat tasks.txt
fi

