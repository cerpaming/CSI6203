#!/bin/bash
#function to calculate the area of a triangle
# loop from 0 to 100
for ((i = 1; i <= 100; i = i + 1)) 
do
 for ((j = 1; j <= 100; j = j + 1))
do
calculate_area ()
 # print the area of triangle
 {
 local area=$(echo "scale=2;(1/2) * $i * $j"|bc)
 echo $area
 }
 triangle=$(calculate_area)
echo "Area for a triangle with base: $i and height $j : is: $triangle"

done
done