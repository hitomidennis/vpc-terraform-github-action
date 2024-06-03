terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }

    backend "s3" {
    bucket = "terraform-s3-backend-remote"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }  
}

provider "aws" {
  region  = "us-east-1"
}