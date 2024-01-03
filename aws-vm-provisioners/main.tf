terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-tf-marco-qa.amazonaws.com"
    key    = "aws-vm-provisioners/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "marco-qa"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "remote-state-tf-marco-qa.amazonaws.com"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}