#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ SNIP SNAP HAIRDRESSING ~~~~~\n"

MAIN_MENU() {
#the service menu
if [[ $1 ]]
 then
  echo -e "\n$1"
 fi
SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
echo -e "\nWelcome to SNIP SNAP HAIRDRESSING, how can I help you? \n"
echo "$SERVICES" | while read SERVICE_ID BAR NAME
do
 echo "$SERVICE_ID) $NAME"
 done
read SERVICE_ID_SELECTED

#non exsisting service selected
SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")
if [[ -z $SERVICE_ID ]]
  then
  MAIN_MENU "Sorry, that is not a service we provide."
#existing service selected
 else
 echo -e "\nWhat is your phone number?"
 read CUSTOMER_PHONE
 CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
   if [[ -z $CUSTOMER_ID ]]
    then
     echo "I don't have that phone number in our customers database, what is your name"
     read CUSTOMER_NAME
      NEW_CUSTOMER=$($PSQL "insert into customers(phone,name) values('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
   fi
   SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
   CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
   CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\n At what time would you like your$SERVICE_NAME,$CUSTOMER_NAME"
  read SERVICE_TIME
  APPOINTMENT=$($PSQL "insert into appointments(customer_id,service_id,time) values($CUSTOMER_ID,'$SERVICE_ID_SELECTED','$SERVICE_TIME')")
  echo -e  "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME,$CUSTOMER_NAME."
 fi

}

MAIN_MENU
