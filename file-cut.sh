#!/bin/bash
#Este programa selecciona líneas de los ficheros fastq de prueba y genera nuevos ficheros con ellas
#Tiene un único argumento de entrada, que se utiliza para seleccionar el cortado obligatorio o
#el cortado avanzado.
#Cortado obligatorio (primer 20avo del fichero): file-cut.sh 1
#Cortado avanzado (líneas que son múltiplo de 20): file-cut.sh 2


if [ $1 == 2 ]; then
	for (( s=1; s <= 4; s++ )); do
		awk 'NR%20 == 0' Sample$s.fastq >> sample$s

	done
fi
	






