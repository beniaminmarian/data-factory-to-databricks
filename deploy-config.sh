#!/bin/bash

echo "=== Azure Deployment Configuration ==="

# Basic deployment configuration

export LOCATION='westus'
export RESOURCEGROUP_BASE_NAME='DevOps-ResourceGroup'
export RESOURCEGROUP_NAME="${RESOURCEGROUP_BASE_NAME}-${LOCATION}"

# Azure user information
export USERNAME="benimarian.marian@tecknoworks.com"
export USER_OBJECT_ID="17cbe4a2-639c-4025-a25a-a252276c43aa"
export USER_PRINCIPAL_NAME="Beniamin Marian"
export USER_TENANT_ID="6df5d9b1-2807-4c12-a223-63909d98a6f2"

# Deployment settings
export DEPLOYMENT_NAME="main-$(date +%Y%m%d%H%M%S)"
export SECRETS_EXPIRATION_DAYS=$(date -d "+1 year" +%Y-%m-%d) 

echo "Configuration complete:"
echo "Username: $USERNAME"
echo "Resource Group Name: $RESOURCEGROUP_NAME"
echo "Location: $LOCATION"
echo "User Principal Name: $USER_PRINCIPAL_NAME"
echo "Secrets Expiration Date: $SECRETS_EXPIRATION_DAYS"
echo "User Object ID: $USER_OBJECT_ID"
echo "User Tenant ID: $USER_TENANT_ID"
echo "Deployment Name: $DEPLOYMENT_NAME"
echo " "
EOF