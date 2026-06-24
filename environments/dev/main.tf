module "networking" {
  source = "../../modules/network"

  project_name                   = var.project_name
  vpc_cidr_block                 = var.vpc_cidr_block
  public_subnet_cidr_blocks      = var.public_subnet_cidr_blocks
  private_app_subnet_cidr_blocks = var.private_app_subnet_cidr_blocks
  private_db_subnet_cidr_blocks  = var.private_db_subnet_cidr_blocks
  single_nat_gateway             = var.single_nat_gateway
}

module "compute" {
  source = "../../modules/compute"

  project_name           = var.project_name
  vpc_id                 = module.networking.vpc_id
  public_subnet_ids      = module.networking.public_subnet_ids
  private_app_subnet_ids = module.networking.private_app_subnet_ids
  instance_type          = var.instance_type
  key_pair_name          = var.key_pair_name
}

module "database" {
  source = "../../modules/database"

  project_name          = var.project_name
  vpc_id                = module.networking.vpc_id
  private_db_subnet_ids = module.networking.private_db_subnet_ids
  app_security_group_id = module.compute.app_security_group_id
  db_engine             = var.db_engine
  db_engine_version     = var.db_engine_version
  db_instance_class     = var.db_instance_class
  db_allocated_storage  = var.db_allocated_storage
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
}

module "dns" {
  source = "../../modules/dns"

  project_name   = var.project_name
  hosted_zone_id = var.hosted_zone_id
  alb_dns_name   = module.compute.alb_dns_name
  alb_zone_id    = module.compute.alb_zone_id
}