terraform {
  backend "s3" {
    bucket = var.state_bucket
    key = "terraform.tfstate"
    dynamodb_table = "tf-state-lock"
    region = "ap-south-1"
  }
}

variable "state_bucket" {
  type = string
}