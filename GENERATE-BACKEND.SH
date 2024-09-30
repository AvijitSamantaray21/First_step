#!/bin/bash

# Replace placeholders in the template with actual environment variable values
sed -e "s/\${storage_account_name}/$TF_VAR_storage_account_name/" \
    -e "s/\${container_name}/$TF_VAR_container_name/" \
    -e "s/\${key}/$TF_VAR_key/" \
    -e "s/\${resource_group_name}/$TF_VAR_resource_group_name/" \
    backend.tf.template > backend.tf

# Initialize Terraform
terraform init
