terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token      = var.aws_session_token
  #  assume_role {
  #    role_arn     = "arn:aws:iam::${var.aws_account}:role/AdministratorAccess"
  #    session_name = "terraform"
  #  }
  default_tags {
    tags = {
      Workspace  = terraform.workspace
      Project    = local.module
      Created_By = "terraform"
    }
  }
}