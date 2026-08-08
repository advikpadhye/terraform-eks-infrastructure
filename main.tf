module "vpc" {

  source   = "./modules/vpc"
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
}

module "security_group" {

  source = "./modules/security-group"

  vpc_id = module.vpc.vpc_id

}

module "eks" {

  source = "./modules/eks"

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  cluster_version = "1.35"

  cluster_name = var.cluster_name

}
