#terraform block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

#when we have to connect terraform to other then we use providers
#provider block
provider "aws" {
  region = "ap-south-1"
}