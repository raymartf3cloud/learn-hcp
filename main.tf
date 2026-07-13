resource "random_string" "storage_suffix" {
  length  = 6
  upper   = false
  lower   = true
  numeric = true
  special = false
}

locals {
  resource_group_name = "rg-${var.project_prefix}-${var.environment}"

  # Azure Storage account names must be 3-24 chars and lowercase alphanumeric only.
  storage_account_name = substr(
    replace(lower("${var.project_prefix}${var.environment}${random_string.storage_suffix.result}"), "/[^a-z0-9]/", ""),
    0,
    24
  )
}

resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source = "./modules/storage_account"

  storage_account_name     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}
