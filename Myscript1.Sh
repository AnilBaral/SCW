#!/bin/bash 
# the path to bash shell that will execute this file 
#notice the path of the data 
cut -f1,3,4 Data/ByCountry/Mexico.txt|sort -nk3|tail -n1 > HighestLE_Mexico.txt