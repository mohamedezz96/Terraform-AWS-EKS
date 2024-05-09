module "eks-network" {
  source          = "github.com/mohamedezz96/Terraform-Modules/EKS/Network"
  vpc_cidr_block  = "10.0.0.0/16"
  private_subnets_cidr_block = {
    us-east-1a = "10.0.0.0/19"
    us-east-1b = "10.0.32.0/19"
    us-east-1c = "10.0.64.0/19"
  }

  public_subnets_cidr_block = {
    us-east-1a = "10.0.96.0/19"
    us-east-1b = "10.0.128.0/19"
    us-east-1c = "10.0.160.0/19"
  }
}


