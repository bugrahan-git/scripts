#!/bin/zsh

mkdir $1 && cd $1 1>&2 2>/dev/null

if [[ $? != 0 ]]; then
	exit 1
fi


echo "# $1" > README.md

git init
git add .
git remote add origin git@gitlab.com:bugrahan/$1.git
git commit -m "add file README.md"
git push origin master
