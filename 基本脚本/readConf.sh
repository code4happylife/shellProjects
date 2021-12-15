#! /bin/bash
# Use dirname to get absolute path
pwd=$( cd $( dirname $0 ) && pwd )
cd ${pwd}

# find script path
echo "pwd:$pwd"

source $pwd/test.conf
echo $name
echo $hobby
echo $location
