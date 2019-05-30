#!/bin/sh

# same.shの機能
# 引数の数が２じゃないとエラー	"Plz input 2 argments"
# 引数が自然数じゃなきゃエラー	"$1 or $2 is not natural number"
# 一致してなかったら	"$1 is not equal to $2"

tmp=/tmp/$$

ERROR_EXIT(){
	echo "$1" 1>&2
	rm -r ${tmp}*
	exit 1
}

# TEST1: input args
echo "Plz input 2 argments" > ${tmp}-ans
./same.sh 2> ${tmp}-result && ERROR_EXIT "error in test1-1"	# 引数なしで実行
diff $tmp-ans $tmp-result || ERROR_EXIT "error in test1-2"	# err messe比較

./same.sh 1 2 3 2> ${tmp}-result && ERROR_EXIT "error in test 1-3"
diff $tmp-ans $tmp-result || ERROR_EXIT "error in test1-4"	# err messe比較


echo "test completed"
