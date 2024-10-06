#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " ERROR: Please run the script with Root Access "
    exit 1
else
    echo "You are the root user"
fi

yum install mysql -y

if [ $? -eq 0 ]
then
    echo "MySQL installation completed successfully"
else
    echo "MySQL installation failed"
    exit 1
fi

systemctl start mysqld
