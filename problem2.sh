#!/usr/bin/env bash
#script that generates two random numbers, and print each of the numbers and their square roots
num1=$((1 + RANDOM % 2000))
num2=$((1 + RANDOM % 3000))
sqrt1=$(echo "sqrt($num1)" | bc)
sqrt2=$(echo "sqrt($num2)" | bc)
sum=$(echo "$sqrt1 + $sqrt2" | bc)
echo "The first random number generated is: $num1"
echo "The square root is: $sqrt1"
echo "The second random number generated is: $num2"
echo "The square root is: $sqrt2"
echo "The sum of their square roots is: $sum"
