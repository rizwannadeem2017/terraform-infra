
# variable "access_key" {
#   default = "AKIA6FNRTBBTOT2CTI4L"
# }

# variable "secret_key" {
# default = "OpkaksMWf+VgVQ/6T1j6q0mQ5TSHxCO7bvz3k/lv"
# }

# variable "region" {
# default = "us-west-1"
# }

# variable "environment" {
# default = "prod"
# }


variable "tags" {
  default = {
    "Team"    = "dev"
    "creator" = "Terraform"
    "repo"    = "https://github.com/rizwannadeem2017/terraform-infra.git"
  }
}

variable "instance_count" {
  default = {
    "us-west-1.prod"    = "2"
    "us-west-1.staging" = "4"
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