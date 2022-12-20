
module "redhat-vm" {
  source = "github.com/rizwannadeem2017/terraform-modules//test?ref=v10.1.2"

  environment = var.environment
  instance_count = var.instance_count["${var.region}.${var.environment}"]
  ami           = var.ami["${var.region}.${var.environment}"]
  instance_type = var.instance_type["${var.region}.${var.environment}"]
  tags          = merge(map("Name", "ubuntu-vm-${format("%02d", count.index + 1)}"), var.tags)

}
