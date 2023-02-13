module "ubuntu-vm" {
  
  #source  = "../terraform-modules/instance_module_with_ebs_storage"

  source      = "github.com/rizwannadeem2017/terraform-modules//instance_module_with_ebs_storage"
  environment = var.environment

  instance_count         = var.instance_count["${var.region}.${var.environment}"]
  ami                    = var.ami["${var.region}.${var.environment}"]
  instance_type          = var.instance_type["${var.region}.${var.environment}"]
  key_name               = var.key_name["${var.region}.${var.environment}"]
  subnets                = element(var.subnets, 0)["${var.region}.${var.environment}"]
  root_block_device_type = var.root_block_device_type["${var.region}.${var.environment}"]
  root_block_device_size = var.root_block_device_size["${var.region}.${var.environment}"]
  #ebs_volume_size        = var.ebs_volume_size["${var.region}.${var.environment}"]
  #ebs_volume_type        = var.ebs_volume_type["${var.region}.${var.environment}"]
  ebs_block_device         = var.ebs_block_device
  staging_ebs_block_device = var.staging_ebs_block_device
  ebs_termination        = "true"
  ssh_user               = var.ssh_user["${var.region}.${var.environment}"]
  private_key            = file("auth_key")
  #instance_profile       = var.instance_profile["${var.region}.${var.environment}"]
  vpc_id                 = var.vpc_id["${var.region}.${var.environment}"]
  ssh_public_key         = var.ssh_public_key["${var.region}.${var.environment}"]
  tags                   = var.tags
}

