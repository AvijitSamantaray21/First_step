#!/bin/bash

# Replace placeholders in the template with actual environment variable values
sed -e "s/\${client_id}/$client_id/" \
    -e "s/\${subsription_id}/$subsription_id/" \
    -e "s/\${client_secret}/$client_secret/" \
    -e "s/\${tenant_id}/$tenant_id/" \
    backend.tf.template > backend.tf

# Initialize Terraform
terraform init
