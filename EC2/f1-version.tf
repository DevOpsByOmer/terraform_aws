terraform {
  required_version = "1.1.7"
  required_providers {
    aws = "~> 5.0"
  }

}
provider "aws" {

  region = var.region

}