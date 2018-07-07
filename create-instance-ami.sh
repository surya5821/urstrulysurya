#!/usr/bin/env bash


DATE=$(date +%Y-%m-%d_%H-%M) 
AMI_NAME="WindowsServerAMI - $DATE"
AMI_DESCRIPTION="WindowsServerBackup - $DATE"
INSTANCE_ID=$1

printf "Requesting AMI for instance $1...\n"
aws ec2 create-image --instance-id $1 --name --region us-east-1 "$AMI_NAME" --description "$AMI_DESCRIPTION" --no-reboot

if [ $? -eq 0 ]; then
	printf "AMI request complete! $AMI_DESCRIPTION \n"	
fi
