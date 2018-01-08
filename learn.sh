#!/bin/bash
## shows executable path: which bash
## shows files in a directory with permissions: ls -l
## allow file to be run as an executable: chmod +x ...sh
## load bash environment to shell: source ...sh

## arg inj
text1="Hello World!"
echo ${text1} > ./message.txt
fname="Bob"
lname="Bobbington"
text2="My name is ${fname} $(echo ${lname} " Jr.")."
echo ${text2} >> ./message.txt
cat ./message.txt
cat ./message.txt | wc -l

## com op
echo "echo AND 1" && notarealcommand && echo "echo AND 2"
echo "echo OR 1" || notarealcommand || echo "echo OR 2"
echo "echo SC 1" ; notarealcommand ; echo "echo SC 2"

## args if else
argnummin=2
argnummax=5
if [[ ${#} -lt ${argnummin} ]]; then
	echo "${0} must have at least ${argnummin} arguments."
elif [[ ${argnummax} -lt ${#} ]]; then
	echo "${0} must have at most ${argnummax} arguments."
else
	echo "argument number is acceptable"
fi
echo "args: ${@}"
exit $? # returns last ran exit code

# continue 6- 12:33