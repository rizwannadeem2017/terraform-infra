
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
    "us-west-1.prod"    = "ami-0f05e5c9509a223df"
    "us-west-1.staging" = "ami-0f05e5c9509a223df"
  }
}


variable "subnets" {
  type        = list(any)
  description = "Internal/Private subnets ID's"
  default = [{
    "us-west-1.prod"    = ["subnet-0a36a3d8165090163", "subnet-01e311bed61383d4b"]
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
    "us-west-1.prod"    = "auth_key"
    "us-west-1.staging" = "auth_key"
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

variable "ebs_block_device" {
  type = list(map(string))
  
  default = [ {
      device_name = "/dev/xvdg"
      volume_size = "10"
   }, 
   { 
      device_name  = "/dev/xvds"
      volume_size = "10"
   },
   { 
      device_name  = "/dev/xvda"
      volume_size = "10"
   }
  ]
}  

# variable "ebs_block_device" {
#   type = list(map(string))
#    default = [ {
#      "key" = "value"
#    } ]
#     "us-west-1.prod"    = [

#       {"name" = "/dev/xvdg", "size" = "10"},
#       {"name" = "/dev/xvdy", "size" = "10"},
#       {"name" =  "/dev/xvdx", "size" = "10"}
#     ]
    
#     "us-west-1.staging" = [
      
#       {"name" = "/dev/xvdg", "size" = "10"},
#       {"name" = "/dev/xvdy", "size" = "10"},
#       {"name" = "/dev/xvdx", "size" = "10"}
#     ]

# }

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
    "us-west-1.prod"    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHfBSe7wUIVp5cit1dMdbHa/bfWufCvE8p8pExAOPsdnuOtEoK7VF52gVxu+AQ3wrarvvtreVF5EBRq2GghOHz3RkAASNhGUhtxPgcwbKXYVQJ9LlSkIzIzh//duTTp3Hygk8nR+S2c0vwhIf3FJCwV9GemhTIA1rKqZyNbjaqE6tiQorqgjXo7PXHLAptsw5M8DthbOH5Ga7BfWLmg2wUwX9r9JMTPXDVTj2MSBmz8x5bqk9+XkzmDWQ++3s8Vpcu99QG6DyXJAhZQFcR+87DtUTUCZYI2PHPc2jftN5VlgB1O/WW62GQIbWCUTwB34WZuL+ErAIARH2sXOFebWYT rizwannadeem@rizwannadeems-MacBook-Pro.local"
    "us-west-1.staging" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHfBSe7wUIVp5cit1dMdbHa/bfWufCvE8p8pExAOPsdnuOtEoK7VF52gVxu+AQ3wrarvvtreVF5EBRq2GghOHz3RkAASNhGUhtxPgcwbKXYVQJ9LlSkIzIzh//duTTp3Hygk8nR+S2c0vwhIf3FJCwV9GemhTIA1rKqZyNbjaqE6tiQorqgjXo7PXHLAptsw5M8DthbOH5Ga7BfWLmg2wUwX9r9JMTPXDVTj2MSBmz8x5bqk9+XkzmDWQ++3s8Vpcu99QG6DyXJAhZQFcR+87DtUTUCZYI2PHPc2jftN5VlgB1O/WW62GQIbWCUTwB34WZuL+ErAIARH2sXOFebWYT rizwannadeem@rizwannadeems-MacBook-Pro.local"
  }
}
variable "vpc_id" {
  default = {
    "us-west-1.prod"    = "vpc-0298ccd36d417680b"
    "us-west-1.staging" = "vpc-0be0fec5c36c0392e"
  }
}

