#!/bin/zsh
s1="abc"
s2="adc"
s3="abcd"
s4="abdd"
s5="abd"

f1="ft_test.txt"
f2="test.txt"

gcc -Wall -Wextra -Werror ./ft_strcmp.c ./test_main.c
echo -n "strcmp($s1, $s1) : " > $f1
./a.out $s1 $s2 >> $f1
echo -n "strcmp($s1, $s2) :" >> $f1
./a.out $s1 $s2 >> $f1
echo -n "strcmp($s3, $s1) :" >> $f1
./a.out $s3 $s1 >> $f1
echo -n "strcmp($s1, $s3) :" >> $f1
./a.out $s1 $s3 >> $f1
echo -n "strcmp($s4, $s5) :" >> $f1
./a.out $s4 $s5 >> $f1
echo -n "strcmp($s5, $s4) :" >> $f1
./a.out $s5 $s4 >> $f1

gcc -Wall -Wextra -Werror ./test_ft_strcmp.c ./test_main.c
echo -n "strcmp($s1, $s1) : " > $f2
./a.out $s1 $s2 >> $f2
echo -n "strcmp($s1, $s2) :" >> $f2
./a.out $s1 $s2 >> $f2
echo -n "strcmp($s3, $s1) :" >> $f2
./a.out $s3 $s1 >> $f2
echo -n "strcmp($s1, $s3) :" >> $f2
./a.out $s1 $s3 >> $f2
echo -n "strcmp($s4, $s5) :" >> $f2
./a.out $s4 $s5 >> $f2
echo -n "strcmp($s5, $s4) :" >> $f2
./a.out $s5 $s4 >> $f2

diff -U 3 $f1 $f2
