terraform {
  cloud {
    organization = "DNSimple"

    workspaces {
      name = "dns-change-management"
    }
  }

  required_providers {
    dnsimple = {
      source  = "dnsimple/dnsimple"
      version = "~> 1.3.0"
    }
  }
}

provider "dnsimple" {
  token   = var.dnsimple_token
  account = var.dnsimple_account
  sandbox = var.dnsimple_sandbox
}
