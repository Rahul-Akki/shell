#!/bin/bash

N1=$1
N2=$2

SUM=($N1+$N2)
echo "Total = $SUM" 
echo "No. of args passed" $#"
echo "all args passed $@"
echo "$0"