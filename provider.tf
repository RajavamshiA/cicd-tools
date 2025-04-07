terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "daws-82ss-cicd"
    key    = "expense-tools"
    region = "us-east-1"
    dynamodb_table = "82s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}