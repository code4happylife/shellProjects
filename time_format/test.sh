#! /bin/bash
# create HTML file with time string as part of file name
time_now=$(date "+%Y-%m-%d-%H:%M:%S")
file_name="${time_now}_test.html"
touch $file_name
