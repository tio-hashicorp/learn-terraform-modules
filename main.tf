# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Terraform configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}



module "myhttp" {
  source = "app.terraform.io/innovation-lab/myhttp/http"

}

output "status_code" {
   value = module.myhttp.status_code
}

output "response_body" {
   value = module.myhttp.response
}
