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
echo

# Para podermos comparar coisas por igual, maior, menor... devemos usar
# o comando 'test' (ou '[]')
echo "Usando o 'test' (ou '[]'). Vários testes são possíveis, descubra-os com 'man test'"
if [ $0 = "if.sh" ]; then
	echo "Ninguém mudou o nome original desse script =]"
elif [ $((2 + 2)) -eq 5 ]; then
	echo 2 + 2 == 5 o.O
else
	echo "Nada é verdadeiro (se entramos no else...)"
fi
echo

# Assim como no C, podemos usar os conectivos curto-circuitantes '&&' (and)
# e '||' (or), mas no shell tanto faz qual tipo de retorno, podendo ser usado
# como um 'if' compacto
# Note que usando 'cond && seSim || seNao' fazemos um operador ternário!
echo "Usando && pra verificar se você rodou \"pipeEBackground.sh\""
[ -f olaaaaaar ] && echo "Você já rodou o script \"pipeEBackground.sh\" xD" || echo "ainda não..."
