#!/usr/bin/env bash

var1=100
var2=45
var3=`echo "scale=4; $var1 / $var2" | bc`
echo The answer for this is $var3

var4=1
var5=3
var6=`echo "scale=6; $var4 / $var5" | bc`
echo "The result of $var4 / $var5 is: $var6"
