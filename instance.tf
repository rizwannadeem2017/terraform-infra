
resource "aws_instance" "redhat-instance" {
  count                       = var.instance_count["${var.region}.${var.environment}"]
  ami                         = var.ami["${var.region}.${var.environment}"]
  instance_type                = var.instance_type["${var.region}.${var.environment}"]
}