module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "21.24.2"

  name = var.cluster_name

  kubernetes_version = var.cluster_version

  subnet_ids = var.subnet_ids

  vpc_id = var.vpc_id


  eks_managed_node_groups = {

    worker = {

      desired_size = 2

      min_size = 2

      max_size = 2

      instance_types = ["t3.small"]

      capacity_type = "ON_DEMAND"

    }

  }

}
