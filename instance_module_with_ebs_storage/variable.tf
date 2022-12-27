
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
    "us-west-1.prod"    = "1"
    "us-west-1.staging" = "1"
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
    "us-west-1.prod"    = "ami-0f05e5c9509a223df"
    "us-west-1.staging" = "ami-0f05e5c9509a223df"
  }
}


variable "subnets" {
  type        = list(any)
  description = "Internal/Private subnets ID's"
  default = [{
    "us-west-1.prod"    = ["subnet-0c0804f0b7984bea7", "subnet-05d3d9ad0ec24823d"]
    "us-west-1.staging" = ["subnet-012cb745451817f7e", "subnet-057986fff9b4368ee"]
    }
  ]
}


variable "environment" {
  type        = string
  description = "The environment name, one of dev,staging,prod"
}
variable "region" {
  type        = string
  description = "The region to deploy resources in."
  default     = "us-west-1"
}
variable "instance_profile" {
  description = "The IAM instance profile for the ec2 instance"
  type        = string
  default     = ""
}

variable "key_name" {
  default = {
    "us-west-1.prod"    = "rsa_id"
    "us-west-1.staging" = "rsa_id"
  }
}
variable "root_block_device_size" {
  default = {
    "us-west-1.prod"    = "10"
    "us-west-1.staging" = "10"
  }
}
variable "root_block_device_type" {
  default = {
    "us-west-1.prod"    = "gp3"
    "us-west-1.staging" = "gp3"
  }
}
variable "ebs_volume_size" {
  default = {
    "us-west-1.prod"    = "10"
    "us-west-1.staging" = "10"
  }
}
variable "ebs_volume_type" {
  default = {
    "us-west-1.prod"    = "gp3"
    "us-west-1.staging" = "gp3"
  }
}
variable "ssh_user" {
  default = {
    "us-west-1.prod"    = "ubuntu"
    "us-west-1.staging" = "ubuntu"
  }
}
variable "private_key" {
  default = {
    "us-west-1.prod"    = ""
    "us-west-1.staging" = ""
  }
}
variable "ssh_public_key" {
  default = {
    "us-west-1.prod"    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3Xqy9GQygr5M0fWQjcBdeQdK5lBl5bpr9JytTNcJTCcflvMdSzJV9WfMZeH40cBoTzR0AMLTcVuEX1I0PJfdgyj3YDtHBqWXH0Ot4Be9AJpTSydUwLk4WMHC8dssHhcyuxQSfJ7VH91ECw7bhVc5Dj/rC5NJt4xGsQRdhXchXCHGLqdTAkzn34E03+Lon6NuuX7cbbXezwUhJwWKiJXb5ZPRXLljD1/QBrP6U3XSrmad5bY5Lzj91RsCkEfhnDmIuPN0Taot12P0RUZITYEA0ozrgwydtt5j2z0q1PUj85QFOhZT7x8uMWfsLhzm0R+OVXPdRDcJTsLTR8mlVpf8N rizwannadeem@rizwannadeems-MacBook-Pro.local"
    "us-west-1.staging" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3Xqy9GQygr5M0fWQjcBdeQdK5lBl5bpr9JytTNcJTCcflvMdSzJV9WfMZeH40cBoTzR0AMLTcVuEX1I0PJfdgyj3YDtHBqWXH0Ot4Be9AJpTSydUwLk4WMHC8dssHhcyuxQSfJ7VH91ECw7bhVc5Dj/rC5NJt4xGsQRdhXchXCHGLqdTAkzn34E03+Lon6NuuX7cbbXezwUhJwWKiJXb5ZPRXLljD1/QBrP6U3XSrmad5bY5Lzj91RsCkEfhnDmIuPN0Taot12P0RUZITYEA0ozrgwydtt5j2z0q1PUj85QFOhZT7x8uMWfsLhzm0R+OVXPdRDcJTsLTR8mlVpf8N rizwannadeem@rizwannadeems-MacBook-Pro.local"
  }
}
variable "vpc_id" {
  default = {
    "us-west-1.prod"    = "vpc-0e3fe3645bc3a7193"
    "us-west-1.staging" = "vpc-0be0fec5c36c0392e"
  }
}

