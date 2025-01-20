terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "arpit-tf-state"
    key = "terraform.tfstate"
    dynamodb_table = "tf-state-lock"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}