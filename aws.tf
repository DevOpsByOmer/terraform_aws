provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
}

resource "aws_vpc" "example" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
