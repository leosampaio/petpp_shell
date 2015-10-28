#!/bin/sh

# Isso é uma função
# Funções são como scripts dentro de scripts, onde funcionam as variáveis
# especiais como fosse um script normal, e variáveis locais são privadas
opcoes () {
	echo "Opções aceitas:"
	echo "-s : silencioso"
	echo "-h : ajuda"
	echo "-v : versão"
	echo "-u : tudo maiúscula"
	echo "-l : tudo minúscula"
	echo "-i : invertido"
}

# nossa string, que pode ser transformada
str="Xupa Federal!"

# Leitor de opções de linha de comando
# Enquanto há argumentos, os processa
while [ $1 ]; do
	# 'case' é igualzinho o 'switch' do C =]
	case $1 in
		"-s")
			silencioso=1 ;;
		"-h")
			echo "Bem vindo ao case.sh"
			opcoes
			exit ;;
		"-v")
			echo "Versão 0.0.0"
			exit ;;
		"-u")
			str=$(echo $str | tr '[:lower:]' '[:upper:]') ;;
		"-l")
			str=$(echo $str | tr '[:upper:]' '[:lower:]') ;;
		"-i")
			str=$(echo $str | rev) ;;
		# esse é o 'default' do 'case'
		*)
			echo "Opção \"$1\" desconhecida =S"
			opcoes
			exit ;;
	esac
	# Consome argumento, pra podermos continuar
	shift
done

# Escreve a string, talvez transformada, mas só se não pediu silêncio
if ! [ $silencioso ]; then
	echo $str
fi
