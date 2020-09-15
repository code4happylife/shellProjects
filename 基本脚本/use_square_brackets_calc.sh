#!/usr/bin/env bash

var1=10
var2=50
var3=45
var4=$[ $var1 * ( $var2 - $var3 ) ]
echo 'The final result is '$var4

var5=1000
var6=2000
var7=$[ $var5 * 2 - $var6  ]
echo "The final result is $var7"
