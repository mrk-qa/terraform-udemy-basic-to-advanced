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
    key    = "aws-provider-vpc/terraform.tfstate"
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

provider "aws" {
  alias  = "canada"
  region = "ca-central-1"

  default_tags {
    tags = {
      owner      = "marco-qa"
      managed-by = "terraform"
    }
  }
}

provider "aws" {
  alias  = "brasil"
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "marco-qa"
      managed-by = "terraform"
    }
  }
}

module "vpc" {
  providers = {
    aws.provider_1 = aws.canada
    aws.provider_2 = aws.brasil
  }

  source = "./vpc"
}