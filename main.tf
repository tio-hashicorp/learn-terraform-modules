terraform {
  required_providers {
    myhttp = {
      source  = "app.terraform.io/innoation-lab/myhttp"
    }
  }
}

module "myhttp" {
  source  = "app.terraform.io/innovation-lab/myhttp/http"
#  version = "0.0.3"
}

output "status_code" {
   value = module.myhttp.status_code
}

output "response_body" {
   value = module.myhttp.response
}
