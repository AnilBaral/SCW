#!/bin/bash 
# the path to bash shell that will execute this file 
#notice the path of the data 
#cut -f1,3,4 Data/ByCountry/Mexico.txt|sort -nk3|tail -n1 > HighestLE_Mexico.txt
# This scripts outputs the highest life expectance 
#usage Statement
#usage ./Myscript1.sh
# Change hard-wire file name 
#Change Mexico.txt to input ans

#define an input varibale 
input= Data/ByCountry/Mexico.txt
output= HighestLE2.txt
cut -f1,3,4 $input|sort -nk3|tail -n1 > $output