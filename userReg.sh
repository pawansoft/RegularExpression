#!/bin/bash

expr="^[A-Z][a-z]{3,}$"
read -p "Enter your First Name: " name
read -p "Enter the Last Name: " lastName
if [[ $name =~ $expr && $lastName =~ $expr ]]
then
	echo "both accepted"
else
	echo "both Rejected"
fi
