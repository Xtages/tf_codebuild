locals {
  environment = var.env == "development" ? "-${var.env}" : ""
  env_short = var.env == "development" ? "dev-" : ""
}

resource "aws_iam_role" "xtages_codebuild_ci_role" {
  name               = "xtages-codebuild-ci-role"
  description        = "Role for the CI builders"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role" "xtages_codebuild_cd_role" {
  name               = "xtages-codebuild-cd-role"
  description        = "Role for the CD builders"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "xtages_codebuild_cd_policy" {
  name = "xtages-codebuild-cd-role-policy"
  role = aws_iam_role.xtages_codebuild_cd_role.id
  policy = templatefile("${path.module}/policies/xtages-codebuild-cd-role-policy.json",{
    account_id = var.account_id
    environment = local.environment
    env_short = local.env_short
    full_env = var.env
    subnets = jsonencode(formatlist("arn:aws:ec2:*:${var.account_id}:subnet/%s", var.subnets))
  })
}

resource "aws_iam_role_policy" "xtages_codebuild_ci_policy" {
  name = "xtages-codebuild-ci-role-policy"
  role = aws_iam_role.xtages_codebuild_ci_role.id
  policy = templatefile("${path.module}/policies/xtages-codebuild-ci-role-policy.json",{
    account_id = var.account_id
    environment = local.environment
    full_env = var.env
    subnets = jsonencode(formatlist("arn:aws:ec2:*:${var.account_id}:subnet/%s", var.subnets))
  })
}
