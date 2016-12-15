#!/bin/bash
ScriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$1" = "" ]; then
  echo Usage: ./igme_prepend_header.sh FileToPrependTo [Project] [Author]
elif [ ! -e "${ScriptDir}/fileheader.txt" ]; then
  echo fileheader.txt must be in the same directory as igme_prepend_header.sh
else
  echo Prepending file header to $1
  mv $1 tmp
  cat "${ScriptDir}/fileheader.txt" tmp > $1
  rm tmp
  echo Prepended: Modifying data
  sed -i "s/PROJECT_NAME/$2/" $1
  sed -i "s/FILE_NAME/$1/" $1
  sed -i "s/AUTHOR_NAME/$3/" $1
  echo Done
fi
