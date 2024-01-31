terraform {
  required_version = "~> 1.7.1"
  required_providers {
    aws = "~> 5.0"
  }
}

provider "aws" {
  region = var.region

}