variable "env" {
  description = "Cloud environment where the resources are allocated e.g. Production, Development, etc"
}

variable "account_id" {
  description = "AWS account ID"
}

variable "subnets" {
  description = "Subnets that CodeBuild will have access to"
  type = list(string)
}
