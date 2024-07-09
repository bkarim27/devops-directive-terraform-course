terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-07c1b39b7b3d2525d" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
}
