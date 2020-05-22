#!/bin/bash -ex
#COPY RECORDS FROM BBB TO S3
#pip3 uninstall requests
#pip3 install requests==2.12
#apt -y install awscli

apt remove awscli
apt install python-pip
pip install awscli
/usr/local/bin/aws configure set aws_access_key_id AWS_KEY
/usr/local/bin/aws configure set aws_secret_access_key AWS_SECRET
/usr/local/bin/aws configure set default.region eu-central-1
cd /var/bigbluebutton/
/usr/local/bin/aws s3 sync . s3://BUCKET
