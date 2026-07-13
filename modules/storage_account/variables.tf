variable "storage_account_name" {
  description = "Globally unique storage account name (3-24 lowercase alphanumeric)."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for the storage account."
  type        = string
}

variable "location" {
  description = "Azure region where the storage account will be created."
  type        = string
}

variable "account_tier" {
  description = "Storage account tier."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage account replication strategy."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags applied to the storage account."
  type        = map(string)
  default     = {}
}
