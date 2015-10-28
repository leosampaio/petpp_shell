#!/bin/sh

# Abre com 'if', fecha com 'fi'
# 'then' DEVE estar na outra linha (ou separada por ';')
# Retorno 0 é falso, qualquer outro retorno é verdadeiro
if false # comando 'false' retorna 0, comando 'true' retorna 1
then
	echo Nunca será escrevido =/
else
	echo Falso, como esperado
fi

# Para podermos comparar coisas por igual, maior, menor... devemos usar
# o comando 'test' (ou '[]')
if [ 
