/*Terraform definition..*/
terraform {
  required_version = ">= 1.5.7"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 6.10.0"
    }
  }

  /*Backend definition..*/
  backend "local" {
    path = "./states/terraform.tfstate"
  }
}
