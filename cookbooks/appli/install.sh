#!/bin/bash

d=`date`
echo "$d - Installation de webgrind"

# error_handler $? "message d'erreur"
function error_handler() {
  if [ $1 -ne 0 ]; then
    echo $2
    exit 1
  fi
}

cd /var/www/html

echo "Copie des fichiers "
cp -r /vagrant/cookbooks/appli/webgrind /var/www/html/

echo "Suppression de index.html"
rm /var/www/html/index.html

apachectl restart

d=`date`
echo "$d - Fin d'installation de webgrind"
