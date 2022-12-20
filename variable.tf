
variable "environment" {}
variable "region" {}
variable "access_key" {}
variable "secret_key" {}

variable "tags" {
  default = {
    "Team"    = "dev"
    "creator" = "Terraform"
    "repo"    = "https://github.com/rizwannadeem2017/terraform-infra.git"
  }
}

variable "instance_count" {
  default = {
    "us-west-1.prod"    = "0"
    "us-west-1.staging" = "0"
  }
}

variable "instance_type" {
  default = {
    "us-west-1.prod"    = "t2.micro"
    "us-west-1.staging" = "t3.micro"
  }
}

variable "ami" {
  default = {
    "us-west-1.prod"    = "ami-0f05e5c9509a223df" #"ami-0574da719dca65348"
    "us-west-1.staging" = "ami-0f05e5c9509a223df" #"ami-0574da719dca65348"
  }
}