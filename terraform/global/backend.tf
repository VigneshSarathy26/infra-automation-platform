# Backend configuration for remote state

terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
