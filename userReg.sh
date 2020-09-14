#!/bin/bash

expr="^[A-Z][a-z]{3,}$"
read -p "Enter your First Name: " name
if [[ $name =~ $expr ]]
then
	echo "accepted"
else
	echo "Rejected"
fi
