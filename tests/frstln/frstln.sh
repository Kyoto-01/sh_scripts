if [ "$#" -ne 1 ]; then
	echo "*** usage: $0 <file_name> ***"
	exit 0
fi

<<comment
other option to the error check bellow:
[ "$#" -ne 1 ] && echo "!!!Passe 1 arquivo como parâmetro para o comando!!!" && exit 0
comment

head -1 $1
