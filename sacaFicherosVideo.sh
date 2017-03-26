#!/bin/bash

SAVEIFS=$IFS
## la variable IFS establece el separador de archivos, se establece a salto de linea
IFS='
'
funcionPrueba(){

	## echo "$1"

	for video in $(ls "$1" | grep .avi)
	do
		## echo $1$video
		mv $1/$video ./
		rm -R $1
	done

}


ls -d */ > lst
echo "Carpetas"
for nombreFichero in $(cat lst)
do
	funcionPrueba $nombreFichero
done
rm lst
## Se restablece la variable IFS
IFS=$SAVEIFS
