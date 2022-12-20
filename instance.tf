module "ubuntu-vm" {
  
  source = "github.com/rizwannadeem2017/terraform-modules//module"
  #source = "../module"
  environment = var.environment

  instance_count = var.instance_count["${var.region}.${var.environment}"]
  ami           = var.ami["${var.region}.${var.environment}"]
  instance_type = var.instance_type["${var.region}.${var.environment}"]
  tags          = var.tags
}

