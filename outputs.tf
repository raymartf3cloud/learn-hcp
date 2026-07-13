output "storage_account_name" {
  description = "Storage account name created via the reusable module."
  value       = module.storage_account.storage_account_name
}

output "storage_account_id" {
  description = "Storage account resource ID created via the reusable module."
  value       = module.storage_account.storage_account_id
}
