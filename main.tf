terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }
 backend "s3" {
        bucket = "28cot2024terraform"
        key    = "terraform.tfstate"
        region  = "us-east-1"
        encrypt = true
        dynamodb_table = "28cot2024terraformDB"
}
}

variable "env" {
description = "Enter the envrionment to choose prod or dev"
type = string
}

provider "aws" {
        region  = "us-east-1"
}

resource "aws_instance" "Sintance" {
        ami  =  "ami-0866a3c8686eaeeba"
        instance_type     = "t2.micro"
        key_name = "Demo"
        associate_public_ip_address = true
tags = {
        Name = "Myinstance-update-a"
}
}

resource "aws_instance" "Rintance" {
        ami  =  "ami-0866a3c8686eaeeba"
        instance_type     = "t2.micro"
        key_name = "Demo"
        associate_public_ip_address = true
tags = {
        Name = "Myinstance1-update"
}
}
