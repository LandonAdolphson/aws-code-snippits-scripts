#!/bin/bash
# Get public IP address of currently running AWS instance.
#
# Assumes an API user is set up; see the following link:
# https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html
#
# Then set up AWS CLI with aws configure command; see:
# https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-config
# 
# also ensure jq is installed:
# sudo yum install jq -y

aws ec2 describe-instances | jq '.Reservations[0].Instances[0].PublicIpAddress' 
