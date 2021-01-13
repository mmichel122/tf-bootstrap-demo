module "mm-tf-demo-vpc" {
  source                = "github.com/mmichel122/tf-aws-simple-vpc"
  env_name              = "demo-tf-dev"
  vpc_cidr              = "192.168.0.0/16"
  vm-count              = 2
  workspace_name        = var.workspace_name
  workspace_team        = var.workspace_team
  region                = var.region
}

module "mm-tf-demo-lambda" {
  source                = "github.com/mmichel122/tf-aws-lambda-email"
  workspace_name        = var.workspace_name
  workspace_team        = var.workspace_team
  region                = var.region
}