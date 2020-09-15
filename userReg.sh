#!/bin/bash


#storing Regular expression into variable
expr="^[A-Z][a-z]{3,}$"
emailExpr="^[a-zA-Z0-9+_.-]+@[a-zA-Z.-]{1,3}+$"
mobExpr="^[0-9]{2,2}[ ][0-9]{10,10}"
passExp="^[a-zA-Z0-9]*[A-Z]*[0-9]+[a-zA-Z0-9]{8,}$"


#Taking input from user------------------------------------------------
read -p "Enter your First Name: " name
read -p "Enter the Last Name: " lastName
read -p "Enter your email id: " email
read -p "Enter Mobile number : " mob
read -p "Enter password: " pass

#Checkinh the f name and l Name is valid or not--------------------------------------
if [[ $name =~ $expr && $lastName =~ $expr ]]
then
	echo "both accepted"
else
	echo "both Rejected"
fi

#Checking Provided Email is valid or not ------------------------------------------- 
if [[ $email =~ $emailExpr ]]
then
	echo "Email Id accepted"
else
	echo "Email Id Rejected"
fi

#Checking provided mobile number validation------------------------------------------
if [[ $mob =~ $mobExpr ]]
then
	echo "Valid Mobile number"
else
	echo "Invalid Mobile number"
fi

#Checking provide Password  validation-------------------------------------------------
if [[ $pass =~ $passExp ]]
then
        echo "Valid Password"
else
        echo "Invalid Password"
fi
