#!/bin/zsh
s1="abc"
s2="def"
s3=$'\0'

f1="ft_test.txt"
f2="test.txt"

gcc -Wall -Wextra -Werror ft_strcat.c test_main.c
echo -n "strcat($s1, $s2) : " > $f1
./a.out $s1 $s2 >> $f1
echo -n "strcat($s1, $s3) : " >> $f1
./a.out $s1 $s3 >> $f1
echo -n "strcat($s3, $s2) : " >> $f1
./a.out $s3 $s2 >> $f1
echo -n "strcat($s3, $s3) : " >> $f1
./a.out $s3 $s3 >> $f1

gcc -Wall -Wextra -Werror test_ft_strcat.c test_main.c
echo -n "strcat($s1, $s2) : " > $f2
./a.out $s1 $s2 >> $f2
echo -n "strcat($s1, $s3) : " >> $f2
./a.out $s1 $s3 >> $f2
echo -n "strcat($s3, $s2) : " >> $f2
./a.out $s3 $s2 >> $f2
echo -n "strcat($s3, $s3) : " >> $f2
./a.out $s3 $s3 >> $f2

diff -U 3 $f1 $f2

