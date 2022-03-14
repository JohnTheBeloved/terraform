terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  access_key = "AKIA4QRR65VVJ4FDIOC2"
  secret_key = "3wHP37AQNgfVGOSmbCRWs6rP0NuD90n0cl/Evo+i"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
