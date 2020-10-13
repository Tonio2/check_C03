#!/bin/zsh
s1="abc"
s2="defghijkl"
s3="1"
s4="3"
s5="6"

f1="ft_test.txt"
f2="test.txt"

gcc -Wall -Wextra -Werror ft_strlcat.c test_main.c
./a.out $s1 $s2 $s3 > $f1
./a.out $s1 $s2 $s5 >> $f1
./a.out $s1 $s2 $s4 >> $f1
./a.out $s1 $s2 $s5 >> $f1

gcc -Wall -Wextra -Werror test_ft_strlcat.c test_main.c
./a.out $s1 $s2 $s3 > $f2
./a.out $s1 $s2 $s5 >> $f2
./a.out $s1 $s2 $s4 >> $f2
./a.out $s1 $s2 $s5 >> $f2

diff -U 3 $f1 $f2
