#!/bin/bash
func_Page(){
	cat << EOF >>index.html
	<!DOCTYPE html>
	<html>
	<head>
	<title>${commandline_args[1]}</title>
	<link rel="stylesheet" href="css/style.css">
	<meta name="viewport" content="width=device-width",initial-scale=1.0">
	</head>
	<body>
	<script src="js/script.js"></script>
EOF
for argvs in "${commandline_args[@]}";
do
	if [ "$argvs" = "--jquery" ]; then
		echo "<script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>">>index.html
	fi
done
cat<< _EOF_>>index.html
</body>
</html>
_EOF_
}

commandline_args=("$@")

#-----Version---#
if [ "$1" = "-v" -o "$1" = "--version" ];then
	echo "Version 1.0";
elif [ "$1" = "-h" -o "$1" = "--help" ];then
	echo "About"
	echo "Bash Generated website"
elif [ "$1" = "-c" -o "$1" ="--create" ];then
	if [ -z "$2" ];then
		echo "Add a name"
	else
		mkdir "$2"
		cd "$2"
		mkdir css js
		touch index.html css/style.css js/script.js
		dir=`pwd`
		echo "Web project $2 has been created at $dir"
	fi
else
	echo "Error.404"
fi
