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
if [[ ${#} < ${argnummin} ]]; then
	echo "${0} must have at least ${argnummin} arguments."
elif [[ ${#} > ${argnummax} ]]; then
	echo "${0} must have at most ${argnummax} arguments."
else
	echo "argument number is acceptable"
fi
echo "args: ${@}"

comp1="1"
comp2="2"
notnully="im not null"
nully=""
if [[ "${comp1}" == "${comp2}" ]]; then
	echo "${comp1}==${comp2}"
else
	echo "${comp1}!=${comp2}"
fi

if [[ -n "${notnully}" ]]; then
	echo "this one's not null"
fi

if [[ -z "${nully}" ]]; then
	echo "this one's null"
fi

A=( 1 2 3 4 )
B=("${A[@]:1:2}") # slice from 1 to 2
C=("${A[@]:1}")   # slice from 1 to the end of the array
echo "${A[0]}"
echo "${B[@]}"
echo "${C[@]}"

for arg in ${A[@]}; do 
	echo "$((arg + 10))"
done

i=0
while [[ ${i} < 5 ]]; do
	echo "${i}"
	i=$(( ${i} + 1 ))
done

function sayHi(){
	echo "Hello ${1}, how are you today?"
}

sayHi Papu

exit $? # returns last ran exit code