#!/bin/bash

# This script assume the existence of a S3 bucket 
# to store the data
#

bubcketName="public-ip-ysb"
tempFileName="/tmp/public-ip"

myip=`dig +short myip.opendns.com @resolver1.opendns.com`
echo $myip > $tempFileName
aws s3 cp /tmp/public-ip s3://$bubcketName/
rm -rf tempFileName=
