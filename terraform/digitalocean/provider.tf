terraform {
  required_version = ">= 0.15"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.8.0"
    }
  }

  backend "s3" {
    key     = "infra/digitalocean.tfstate"
    bucket  = "jagd-ops-terraform-remote-state"
    region  = "eu-west-2"
    encrypt = true
  }
}

provider "digitalocean" {
  token = var.do_token
}
