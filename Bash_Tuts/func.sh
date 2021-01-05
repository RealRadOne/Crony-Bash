function ostype()
{
  # Distinguish between MS-Windows/Linux/MacOS
  if type -t wevtutil &> /dev/null
  then
    OS=MSWin
  elif type -t scutil &> /dev/null
  then
    OS=MacOS
  else
    OS=Linux
  fi
  echo $OS
}
function ostype_b()
{
  if type -t uname &> /dev/null
  then echo Linux
  else
    echo NonLinux
  fi
}
function set()
{

}
ostype
ostype_b
