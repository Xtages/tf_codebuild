#tf_codebuild

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.xtages_codebuild_cd_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.xtages_codebuild_ci_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.xtages_codebuild_cd_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.xtages_codebuild_ci_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_sns_topic.build_updates_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.build_updates_topic_sqs_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sqs_queue.build_updates_deadletter_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue.build_updates_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue_policy.build_updates_queue_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | AWS account ID | `any` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Cloud environment where the resources are allocated e.g. Production, Development, etc | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_xtages_codebuild_cd_role_arn"></a> [xtages\_codebuild\_cd\_role\_arn](#output\_xtages\_codebuild\_cd\_role\_arn) | n/a |
| <a name="output_xtages_codebuild_ci_role_arn"></a> [xtages\_codebuild\_ci\_role\_arn](#output\_xtages\_codebuild\_ci\_role\_arn) | n/a |
