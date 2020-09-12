#!/usr/bin/env bash

#An example of using the expr command

var1=10
var2=20
var3=`expr $var2 / $var1`
echo "The result is $var3"

var4=32
var5=4
var6=`expr $var4 / $var5`
echo "The result of $var4 / $var5 is : $var6"
