#!/bin/zsh
s1="abcd"
s2="efgh"
s3=$'\0'
s4="0"
s5="2"
s6="10"

f1="test_my_output.txt"
f2="test_correct_output.txt"

gcc -Wall -Wextra -Werror test_main.c ft_strncat.c
./a.out $s1 $s2 $s4 > $f1
./a.out $s1 $s2 $s6 >> $f1
./a.out $s1 $s2 $s5 >> $f1
./a.out $s3 $s3 $s5 >> $f1

gcc -Wall -Wextra -Werror test_main.c test_ft_strncat.c
./a.out $s1 $s2 $s4 > $f2
./a.out $s1 $s2 $s6 >> $f2
./a.out $s1 $s2 $s5 >> $f2
./a.out $s3 $s3 $s5 >> $f2

diff -U 3 $f1 $f2
rm $f1 $f2
