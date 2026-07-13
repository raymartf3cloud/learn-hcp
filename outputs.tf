output "resource_group_name" {
  description = "Resource group created by the root module."
  value       = azurerm_resource_group.this.name
}

output "storage_account_name" {
  description = "Storage account name created via the reusable module."
  value       = module.storage_account.storage_account_name
}

output "storage_account_id" {
  description = "Storage account resource ID created via the reusable module."
  value       = module.storage_account.storage_account_id
}

output "primary_blob_endpoint" {
  description = "Primary blob endpoint URL."
  value       = module.storage_account.primary_blob_endpoint
}
