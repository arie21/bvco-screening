module "service" {
  #source  = "cn-terraform/ecs-fargate-service/aws"
  #version = "2.0.39"
  source = "./modules/terraform-aws-ecs-fargate-service"

  name_prefix         = var.name_prefix
  vpc_id              = module.base-network.vpc_id
  ecs_cluster_arn     = module.cluster.aws_ecs_cluster_cluster_arn
  task_definition_arn = module.td.aws_ecs_task_definition_td_arn
  public_subnets      = module.base-network.public_subnets_ids
  private_subnets     = module.base-network.private_subnets_ids
  container_name      = "test"
  ecs_cluster_name    = module.cluster.aws_ecs_cluster_cluster_name
}
