variable "location" {
  description = "Azure region where resources will be created."
  type        = string
  default     = "southeastasia "
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

variable "resrource_group_name" {
  description = "Resource group name for the storage account."
  type        = string
  default     = "rg-rflores-lab"
}

variable "storage_account_name" {
  description = "Globally unique storage account name (3-24 lowercase alphanumeric)."
  type        = string
  default     = "stgaccountrfloreslab"
}
