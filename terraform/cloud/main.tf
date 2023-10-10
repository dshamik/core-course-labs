terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.7"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "server" {
  ami           = var.ami_value
  instance_type = var.instance_type

  tags = {
    Name = var.server_name
  }
}