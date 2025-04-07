terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-tf-remote-state-eks"
    key    = "expense-tools"
    region = "us-east-1"
    dynamodb_table = "82s-tf-remote-state-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}