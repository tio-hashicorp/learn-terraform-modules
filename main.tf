
/*
terraform {
  required_providers {
    http = {
#      source  = "app.terraform.io/innovation-lab/myhttp"
      source  = "hashicorp/http"
      version = "~>1.0"
    }
    
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}
*/

module "myhttp" {
  source  = "app.terraform.io/innovation-lab/myhttp/http"
#  source  = "../modules/terraform-http-myhttp"
}

output "status_code" {
   value = module.myhttp.status_code
}

output "response_body" {
   value = module.myhttp.response
}
