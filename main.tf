terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }

    azurem {
      source  = "hashicorp/azurem"
      version = "2.94.0"
    }

  }
}

provider "aws" {
  region = "us-east-1"
  profile = "tf369"

  default_tags {
    tags = {
      Owner    = "Pablo Shinzato"
      Manageby = "Terraform"
    }
  }

}

provider "azurerm" {
  features {}
}
