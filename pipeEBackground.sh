#!/bin/sh

# Pipe ('|') serve pra conectar a saída (stdout) de um comando na
# entrada (stdin) de outro, de modo que se o primeiro comando acaba, um EOF é
# enviado ao segundo
echo "Número total de linhas usados pelos scripts shell desse repositório"
wc -l *.sh | tail -n 1
echo

# se 
if [ -x $(which cowsay) ]
then
	echo "Mais um exemplo de pipe, que usa o cowsay (se existir)"
	cat $0 | cowsay -n
fi

# Podemos rodar comandos em background, de modo que o shell não espere o
# retorno deles
yes "olaaaaaar" > olaaaaaar &
sleep .5 # espera um segundo
kill $! # mata o 'yes' (lembre-se da variável especial $!)
echo Em meio segundo, 'yes' conseguiu escrever muitos olaaaaaar:
wc -l olaaaaaar
