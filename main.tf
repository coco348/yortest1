terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-05d34d340fb1d89e5"
  instance_type = "t2.micro"



  tags = {
    git_commit           = "N/A"
    git_file             = "main.tf"
    git_last_modified_at = "2022-01-06 21:32:44"
    git_last_modified_by = "y.b.yuan@accenture.com"
    git_modifiers        = "y.b.yuan"
    git_org              = "coco348"
    git_repo             = "yortest1"
    yor_trace            = "f1683bf4-e12b-4ee0-8ee2-1b08d456190e"
  }
}