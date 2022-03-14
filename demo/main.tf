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
  access_key = "AKIA4QRR65VVMDNT47KZ"
  secret_key = "o8UFY+ceOll+InFuKy2o+T5vmkYkNRYiFN5Cw7sx"
}

# # Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }

resource "aws_instance" "demo" {
  ami           = "ami-0015a39e4b7c0966f"
  instance_type = "t2.micro"

  tags = {
    Name = "Demo"
  }
}
