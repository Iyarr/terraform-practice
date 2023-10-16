#!/bin/bash

terraform init

terraform apply -var="aws_access_key_id=$AWS_ACCESS_KEY_ID" \
                -var="aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" \
                -auto-approve
