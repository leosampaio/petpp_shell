#!/bin/sh

# Argumentos dados para scripts (ou funções) são acessados pelo seu número
# $1, $2, $3...
# Há também variáveis especiais:
#     $# -> número de argumentos
#     $@ -> todos os argumentos, separados por ' '

echo Temos "$#" argumentos:
echo -n "Tudo junto: "
echo "$@"
echo
echo Cada um numa linha
for arg in $@
do
	echo $arg
done

echo Tiremos o primeiro argumento agora
shift
echo Agora temos "$#" argumentos:
echo "$@"
