#!/bin/bash


myip=`dig +short myip.opendns.com @resolver1.opendns.com`
echo $myip > /tmp/public-ip
aws s3 cp /tmp/public-ip s3://public-ip-ysb/
rm -rf /tmp/public-ip-ysb
