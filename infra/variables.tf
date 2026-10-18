variable "aws_region" {
  default = "ca-central-1"
}

variable "environment" {
  default = "dev"
}

variable "container_image" {
  description = "Container image URI deployed by ECS."
  type        = string
  default     = "public.ecr.aws/docker/library/nginx:stable"
}

