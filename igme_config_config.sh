#!/bin/bash
if [ "$1" = "" ]; then
  echo Usage: ./igme_config_config.sh ConfigFile [Series] [Project] [Author] [AuthorGithub] [Description] [Language]
else
  sed -i "s/SERIES_NAME/$2/g" $1
  sed -i "s/PROJECT_NAME/$3/g" $1
  sed -i "s/AUTHOR_NAME/$4/g" $1
  sed -i "s/AUTHOR_GITHUB/$5/g" $1
  sed -i "s/DESCRIPTION/$6/g" $1
  sed -i "s/LANGUAGE_NAME/$7/g" $1
  if [ "$1" != "igme_config.yml" ]; then
    echo Don\'t forget to rename $1 to igme_config.yml
  fi
fi
