#!/bin/bash

expr="^[A-Z][a-z]{3,}$"
emailExpr="^[a-zA-Z0-9+_.-]+@[a-zA-Z.-]{1,3}+$"
read -p "Enter your First Name: " name
read -p "Enter the Last Name: " lastName
read -p "Enter your email id: " email
if [[ $name =~ $expr && $lastName =~ $expr ]]
then
	echo "both accepted"
else
	echo "both Rejected"
fi
if [[ $email =~ $emailExpr ]]
then
	echo "Email Id accepted"
else
	echo "Email Id Rejected"
fi
