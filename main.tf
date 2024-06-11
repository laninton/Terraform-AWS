terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

module "keys" {
  source = "./keys"
}

module "networking" {
  source = "./networking"
}

module "compute" {
  source = "./compute"
  vpc_id = module.networking.vpc_id
  subnet_ids = module.networking.subnet_ids
  security_group_id = module.networking.security_group_id
  key_name = module.keys.key_name
}

module "load_balancer" {
  source = "./load_balancer"
  vpc_id = module.networking.vpc_id
  subnets = module.networking.subnet_ids
  security_group_id = module.networking.security_group_id
}