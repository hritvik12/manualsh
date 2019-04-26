#!/bin/bash
echo "enter user name"
read user

useradd $user

passwd $user


"user $user has been created"


