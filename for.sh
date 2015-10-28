#!/bin/bash

# Esse script usa uma extensão do bash: '[[ ]]'

# For é sempre assim: 'for var in conjunto'
echo Vejamos quais arquivos nesse diretório são scripts shell
echo
for f in $(ls -a)
do
	# ignora pastas
	if [ -f $f ]; then
		echo "Testando \"$f\""
		if [[ $f == *.sh ]]; then
			echo "  Esse é sim um script shell =]"
		else
			echo "  Esse não é script shell, que sem graça =/"
		fi
	fi
done
echo

# Mas tio, e se eu quiser um 'for' numérico? Te digo, mermão: use o 'seq' ;]
echo "Números pares até o 20"
for i in $(seq 0 2 20); do
	echo $i
done
