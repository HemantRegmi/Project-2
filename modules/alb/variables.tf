

variable "subnet_ids" {
  type = list(string)
  description = "List of subnet IDs for the ALB"
}

variable "vpc_id" {
  type = string
  description = "VPC ID for the ALB"
}
