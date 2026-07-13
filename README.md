# learn-hcp

Simple Terraform project with:

- A reusable module for Azure Storage Account.
- A root module that creates a resource group and reuses that module.

## Structure

- modules/storage_account
  - main.tf
  - variables.tf
  - outputs.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf
- terraform.tfvars.example

## Usage

1. Authenticate to Azure (for example, with Azure CLI):
   az login

2. Initialize Terraform:
   terraform init

3. Optionally copy example variables and adjust values:
   copy terraform.tfvars.example terraform.tfvars

4. Review plan:
   terraform plan

5. Apply:
   terraform apply

## Notes

- Storage account name is generated in root and normalized to Azure naming rules.
- Because storage account names are globally unique, Terraform appends a random suffix.
