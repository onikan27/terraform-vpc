terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}

provider "aws" {
  region = var.region
  profile = var.profile
}

resource "aws_vpc" "ex_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test"
  }
}
