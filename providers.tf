terraform {
  required_version = ">= 1.6.0"

  cloud {

    organization = "rflores-personal"

    workspaces {
      name = "DevTraining"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d5736eb1-f851-4ec3-a2c5-ac8d84d029e2"
}
