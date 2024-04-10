terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Provision services
resource "aws_s3_bucket" "spotify-bucket" {
  bucket = var.bucket
  force_destroy = true
  tags = {
    Name = "s3forProjects"
  }
}

resource "aws_instance" "spotify-ec2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "EC2forProjects"
  }
}


resource "aws_redshiftserverless_namespace" "spotify-redshift" {
  namespace_name = var.namespace_name
  db_name = var.db_name
  tags = {
    Name = "RedshiftforProjects"
  }
}