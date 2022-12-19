# variable "access_key" {}
# variable "secret_key" {}
# variable "region" {}
# variable "environment" {}


variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_type" {
  default = {
  "us-east-1.prod" = "t2.micro"
  "us-east-1.stag" = "t3.micro"
  }
}

variable "ami" {
  default = {
    "us-east-1.prod" = "ami-0f05e5c9509a223df" #"ami-0574da719dca65348"
    "us-east-1.stag" = "ami-0f05e5c9509a223dd" #"ami-0574da719dca65348"
  }
}