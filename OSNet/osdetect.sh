if type -t uname &> /dev/null
then 
  OS=Linux
else
  OS=NonLinux
fi
echo $OS
