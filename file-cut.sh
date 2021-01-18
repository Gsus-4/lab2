#!/bin/bash
#Este programa selecciona líneas de los ficheros fastq de prueba y genera nuevos ficheros con ellas
#Tiene un único argumento de entrada, que se utiliza para seleccionar el cortado obligatorio o
#el cortado avanzado.
#Cortado obligatorio (primer 20avo del fichero): file-cut.sh 1
#Cortado avanzado (líneas que son múltiplo de 20): file-cut.sh 2

#Los archivos de salida se guardan en una carpeta al efecto, que es creada si no existe


for (( s=1; s <= 4; s++ )); do
	if [ $1 == 1 ]; then
		mkdir -p obligatorio
		l=($(wc -l < Sample$s.fastq))
		head -n $(( $l/20 )) Sample$s.fastq >> ./obligatorio/Sample$s.fastq
	fi

	if [ $1 == 2 ]; then
		mkdir -p avanzado
		awk 'NR%20 == 0' Sample$s.fastq >> ./avanzado/Sample$s.fastq
	fi
done





	






