provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_version = ">= 1.0"

  backend "local" {
    path = "dev/vpc/terraform.tfstate"
  }
}

module "vpc" {
  source = "../../../infrastructure-modules/vpc"

  env             = "dev"
  azs             = ["eu-central-1a", "eu-central-1b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev"       = "owned"
  }

  public_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev"       = "owned"
  }
}
