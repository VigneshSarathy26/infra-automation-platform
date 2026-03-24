variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "gcp_project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, staging, prod)"
}
