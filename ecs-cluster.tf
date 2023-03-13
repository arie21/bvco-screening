module "cluster" {
  #source  = "cn-terraform/ecs-cluster/aws"
  #version = "1.0.10"
  source = "./modules/terraform-aws-ecs-cluster"

  name = var.name_prefix
  tags = var.tags
}