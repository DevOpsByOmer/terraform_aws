locals {
  owners      = var.business_devision
  environment = var.Environment
  name        = "${local.owners}-${local.environment}"
  common_tags = {
    business_devision = local.owners
    Environment       = local.environment
  }
}

