# bvco-screening


This is a very basic structure to consume the https://github.com/cn-terraform terraform modules.
The idea is to show the structure that I try to use when setting up an environment. Multiple "independent" layers.
So it's easier to provide developers with generalistic modules that work as wrappers to more specific modules.
The modules are:

	- terraform-aws-networking
	- terraform-aws-ecs-cluster
	- terraform-aws-ecs-fargate-task-definition
	- terraform-aws-ecs-fargate-service


The specific modules are meant to be generic and contain all the supported features that terraform provides (that doesn't mean all the AWS features provides), and the wrappers consume those and include standard and pre-configured stuff to make developers' lives easier, and when as situation arrives when a team requires a more specific implementation, they can use the specific modules directly.


NOTE: In a more formal scenario, I would use the main community-supported modules https://github.com/terraform-aws-modules, and from there branch out.
I used the cn-terraform ones due to the nature of this exercise, as it already has a straight forward structure (service calls task definition, the task calls cluster, cluster calls networking, etc...) which makes it easier to showcase the file structure and the dependency layers that I wanted to show.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_base-network"></a> [base-network](#module\_base-network) | ./modules/terraform-aws-networking | n/a |
| <a name="module_cluster"></a> [cluster](#module\_cluster) | ./modules/terraform-aws-ecs-cluster | n/a |
| <a name="module_service"></a> [service](#module\_service) | ./modules/terraform-aws-ecs-fargate-service | n/a |
| <a name="module_td"></a> [td](#module\_td) | ./modules/terraform-aws-ecs-fargate-task-definition | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefix name to use for the resources names | `string` | `"bvco"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags | `map(string)` | `{}` | no |

## Outputs

No outputs.