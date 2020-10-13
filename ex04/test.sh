#!/bin/zsh
s1="abcdefghi"
s2="def"
s3="iabc"
s4="ij"
s5=$'\0'

f1="ft_test.txt"
f2="test.txt"

gcc -Wall -Wextra -Werror ft_strstr.c test_main.c
./a.out $s1 $s5 > $f1
./a.out $s1 $s3 >> $f1
./a.out $s1 $s4 >> $f1
./a.out $s1 $s2 >> $f1

gcc -Wall -Wextra -Werror test_ft_strstr.c test_main.c
./a.out $s1 $s5 > $f2
./a.out $s1 $s3 >> $f2
./a.out $s1 $s4 >> $f2
./a.out $s1 $s2 >> $f2

diff -U 3 $f1 $f2
rm $f1 $f2
