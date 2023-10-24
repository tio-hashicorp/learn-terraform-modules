terraform {
  required_providers {
    myhttp = {
      source  = "app.terraform.io/innovation-lab/myhttp"
      version = "~>1.0"
    }

    yourhttp = {
      source  = "app.terraform.io/innovation-lab/myhttp"
      version = "~>2.0"
    }

    ourhttp = {
      source  = "hashicorp/http"
      version = "~>3.0"
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
