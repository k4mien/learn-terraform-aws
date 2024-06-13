terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "terraform"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0faab6bdbac9486fb"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-server"
  }
}
