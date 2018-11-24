#!/bin/bash

# go to directory with Terraform files
cd ../terraform/stage

# get state in file
terraform state pull > terraform.tfstate

# parse file in JSON format using terraform-inventory
terraform-inventory -list terraform.tfstate

# remove temp file
rm terraform.tfstate
