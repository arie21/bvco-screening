module "td" {
  #source  = "cn-terraform/ecs-fargate-task-definition/aws"
  #version = "1.0.30"
  source = "./modules/terraform-aws-ecs-fargate-task-definition"

  name_prefix     = var.name_prefix
  container_image = "node"
  container_name  = "test"
}