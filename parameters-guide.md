# Template Parameters Guide

## Required Parameters
- `userObjectId`: Your Azure AD user ID (for permissions)
- `userTenantId`: Your Azure AD tenant ID (for security)
- `username`: Your email (for SQL admin access)
- `secretsExpirationDate`: When Key Vault secrets expire

## Optional Parameters  
- `location`: Azure region (defaults to resource group location)
- `administratorLogin`: SQL admin username (has default)
- `administratorLoginPassword`: SQL password (auto-generated)

## How to Get Required Values
- ObjectId: `az ad signed-in-user show --query id -o tsv`
- TenantId: `az ad signed-in-user show --query tenantId -o tsv`
- Username: Your Azure login email
