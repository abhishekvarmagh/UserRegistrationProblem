#! /bin/bash 

echo "Welcome to User Registration Problem"

shopt -s extglob

function validateUserDetails(){
	readUserDetail=$1
	validatingPattern=$2
	if [[ $readUserDetail =~ $validatingPattern ]]
	then
		echo "Valid $3"
	else
		echo "Invalid $3"
	fi
}

read -p "Enter your first name : " firstName
namePattern="^([A-Z]{1}[A-Za-z]{2,})$"
validateUserDetails "$firstName" $namePattern First_Name
read -p "Enter your last name : " lastName
validateUserDetails "$lastName" $namePattern Last_Name
read -p "Enter your Email-Id : " email
emailPattern="^([a-zA-Z]{3,}([-|+|_|.]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
validateUserDetails "$email" $emailPattern Email
read -p "Enter your mobile number : " mobileNumber
mobileFormat="^([0-9]{1,3}[[:space:]][1-9]{1}[0-9]{9})"
validateUserDetails "$mobileNumber" $mobileFormat Mobile_Number
