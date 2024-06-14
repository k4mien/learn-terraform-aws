terraform {
  cloud {
    organization = "learn_hcp_9"
    workspaces {
      name = "learn-terraform-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0faab6bdbac9486fb"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
