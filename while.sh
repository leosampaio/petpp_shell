#!/bin/sh

# Joguinho de "Adivinhe o número"
echo "Adivinhe em que número estou pensando!"
num=42

read tentativa

# Condições no 'while' funcionam exatamente como no 'if'
# Assim como no 'if', 'do' DEVE estar na outra linha (ou separado por ';')
while [ $tentativa -ne $num ] 2> /dev/null
do
	if [ $tentativa -gt $num ] 2> /dev/null
	then
		echo Menor
	else
		echo Maior
	fi
	read tentativa
done

if [ $tentativa -eq $num ] 2> /dev/null
then
	echo "Parabéns, você acertou! =]"
else
	echo "Números, por favor!"
fi
