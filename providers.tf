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
}
