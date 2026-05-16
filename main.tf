module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source          = "./modules/ec2"
  subnet_id       = module.vpc.public_subnet_id
  security_group  = module.vpc.security_group_id
  instance_type   = var.instance_type
  key_name        = var.key_name
}

module "s3" {
  source = "./modules/s3"
}

module "ecr" {
  source = "./modules/ecr"
}

module "iam" {
  source = "./modules/iam"
}
