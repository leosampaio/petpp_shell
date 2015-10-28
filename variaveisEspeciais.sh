#!/bin/sh

# Argumentos dados para scripts (ou funções) são acessados pelo seu número
# $1, $2, $3...
# Há também outras variáveis especiais:
#     $0 -> nome do próprio script/função
#     $# -> número de argumentos
#     $@ -> todos os argumentos, separados por ' '
#     $? -> valor de retorno do último comando
#     $$ -> PID do shell
#     $! -> PID do último comando em background

echo "$0 diz: 'Bom dia!'"
echo

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
