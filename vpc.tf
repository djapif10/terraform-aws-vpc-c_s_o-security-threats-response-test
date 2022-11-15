module "sandbox_vpc" {
  source = "../../modules/vpc"

  availability_zones        = var.availability_zones
  environment               = var.environment
  
  # Changed to variable, defined deafult value in terraform.tfvars 
  vpc_cidr_block            = var.vpc_cidr_block
  
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  
  
  # Added private subnets definition 11/08/2022 - ST
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
}


