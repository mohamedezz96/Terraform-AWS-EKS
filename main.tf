module "eks-network" {
  source          = "github.com/mohamedezz96/Terraform-Modules/EKS/EKS-Network"
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

module "eks-cluster" {
  source = "github.com/mohamedezz96/Terraform-Modules/EKS/EKS-Cluster"
  cluster_name = "Testing"
  cluster_version = "1.29"
  subnet_ids = module.eks-network.eks_vpc_subnet_ids
}

module "eks-node-group" {
  source = "github.com/mohamedezz96/Terraform-Modules/EKS/EKS-NodeGroup"

  cluster_name = module.eks-cluster.cluster_name
  node_group_name = "Group-A"
  eks_vpc_private_subnet_ids = module.eks-network.eks_vpc_private_subnet_ids

  node_group_ami_type = "BOTTLEROCKET_x86_64"
  node_group_instance_type = ["t3.medium"]
  node_group_capacity_type = "ON_DEMAND"

  node_group_desired_size = 3
  node_group_max_size = 5
  node_group_min_size = 3
  node_group_max_unavailable = 1
}

