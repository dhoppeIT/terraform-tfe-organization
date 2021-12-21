terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.27.0, < 1.0.0"
    }
  }

  required_version = ">= 1.0"
}
