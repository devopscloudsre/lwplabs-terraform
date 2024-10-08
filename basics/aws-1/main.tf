
### provider to talk to aws API
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

provider "aws" {
  # Configuration options
}


# create VPC

resource "aws_vpc" "myvpc" {
  cidr_block       = "10.17.0.0/24"
  instance_tenancy = "default"
  enable_dns_support = "false"
  enable_dns_hostnames = "true"
}