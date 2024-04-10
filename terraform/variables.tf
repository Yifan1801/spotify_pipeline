variable "region" {
  description = "The region used in aws."
  default = "us-east-2"
  type        = string
}

variable "access_key" {
  description = "Your access key for IAM user"
  type        = string
}

variable "secret_key" {
  description = "Your secret key for IAM user"
  type        = string
}

variable "bucket" {
  description = "The region used when creating google provider. (eg. us-central1)"
  default = "msim-spotify-bucket"
  type        = string
}

variable "ami" {
  description = "AMI of EC2"
  default = "ami-0900fe555666598a2"
  type        = string
}

variable "instance_type" {
  description = "Instance type of EC2"
  default = "t2.micro"
  type        = string
}

variable "namespace_name" {
  description = "Your Redshift serverless namespace"
  default = "de-project-redshift"
  type        = string
}

variable "db_name" {
  description = "Database name for redshift"
  default = "de-spotify-db"
  type        = string
}
