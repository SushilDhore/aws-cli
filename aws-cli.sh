#!/bin/bash


########################################

# Author : Sushil Dhore
# Linkedin : https://www.linkedin.com/in/sushildhore/
#version : V1
#----------------------------------------------------------#

# CronJob Syntax : Every Day 10 AM 

# 0 10 * * * /home/ubuntu/aws-cli.sh

#_____________________________________________________________________#

# Install dependencies

#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install

#sudo apt  install jq

# aws configure 
# 1)  Put your " Access key "
# 2)  Put Your " Secret access key "


#_____________________________________________________________________#
set -x

# Retrive AWS Resource In Single Place

# List S3 Buckets
echo here is s3 bucket >> abc.txt
aws s3 ls >> abc.txt


echo -------------------------------------------- >> abc.txt
# List Running EC2 Instance 
echo here is ec2 instance >> abc.txt
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> abc.txt









