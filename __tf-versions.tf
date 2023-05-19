############################################
# version of terraform and providers
############################################

terraform {
  cloud {
    organization = "schan-test"

    workspaces {}
  }
}


# terraform {
#   required_version = ">= 1.2.0, < 2.0.0"

#   required_providers {
#     aws = "~> 4.4.0"
#   }

#   backend "s3" {}
# }

############################################
# AWS Provider Configuration
############################################
provider "aws" {
  region  = var.aws_region
  # profile = var.aws_profile

}