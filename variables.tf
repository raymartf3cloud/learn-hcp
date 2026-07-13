variable "project_prefix" {
  description = "Short prefix for all resource names."
  type        = string
  default     = "learnhcp"
}

variable "environment" {
  description = "Deployment environment name (for example: dev, test, prod)."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region where resources will be created."
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags applied to all resources that support tags."
  type        = map(string)
  default = {
    managed_by = "terraform"
    project    = "learn-hcp"
  }
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

variable "test_var" {
  description = "A test variable."
  type        = string
}
