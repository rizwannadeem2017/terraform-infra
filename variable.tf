variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
variable "region" {
  default = ""
}
variable "environment" {
  default = ""
}


variable "instance_count" {
default = {
  "us-west-1.prod" = "1"
  "us-west-1.stag" = "0"
}
}

variable "instance_type" {
  default = {
  "us-west-1.prod" = "t2.micro"
  "us-west-1.stag" = "t3.micro"
  }
}

variable "ami" {
  default = {
    "us-west-1.prod" = "ami-0f05e5c9509a223df" #"ami-0574da719dca65348"
    "us-west-1.stag" = "ami-0f05e5c9509a223dd" #"ami-0574da719dca65348"
  }
}