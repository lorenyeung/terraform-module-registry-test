terraform {
  required_providers {
    harness = {
      source = "harness/harness"
      version = "~> 0.35.3"
    }
    vault = {
      source = "registry.opentofu.org/hashicorp/vault"
    }
    random = {
      source = "registry.opentofu.org/hashicorp/random"
    }
    otrandom = {
      source = "registry.opentofu.org/opentofu/random"
    }
    google = {
      source = "registry.opentofu.org/opentofu/google"
    }
    aws = {
      source  = "registry.opentofu.org/hashicorp/aws"
      version = "~> 5.0"
    }

  }
}

provider "github" {
  token = var.github_token
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "WqS38aeyQjayoqy6mzwceA"
  platform_api_key = var.harness_key
}

provider "aws" {
  region = var.region
}
