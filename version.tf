terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.24"
    }
  }
  backend "remote" {
    organization = "engfors"

    workspaces {
      name = "terraform-workspace-factory-demo"
    }
  }
}
