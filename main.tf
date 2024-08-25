module "vpcs" {
  source = "./modules/vpc"
  vpc_configs = var.vpc_configs
}