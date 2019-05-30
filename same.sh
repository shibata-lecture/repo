#!/bin/sh

# same.shの機能
# 引数が自然数じゃなきゃエラー	"$1 or $2 is not natural number"
# 一致してなかったら	"$1 is not equal to $2"

# 引数の数が２じゃないとエラー	"Plz input 2 argments"
if [ $# -ne 2 ] ;
then
	echo "Plz input 2 argment" 1>&2
	exit 1
fi


# 本体
if [ $1 -eq $2 ];
then
	echo "$1 is equal to $2"
else
	echo "$1 is not equal to $2"
fi
