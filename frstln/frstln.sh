if [ "$#" -ne 1 ]; then
	echo "*** usage: $0 <file_name> ***"
	exit 0
fi

head -1 $1
