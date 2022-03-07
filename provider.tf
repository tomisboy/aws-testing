terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"


   backend "s3" {
       bucket = "first-bucket-talpert"
       key = "terraform.tfstate"
       region = "eu-central-1"
   }
}


provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region  = "eu-central-1"
}
