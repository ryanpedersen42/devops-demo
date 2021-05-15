provider "digitalocean" {
  version = "~> 1.22"
  token   = var.do_token 
}

terraform {
  backend "s3" {
    endpoint                    = "ams3.digitaloceanspaces.com/" # specify the correct DO region
    region                      = "us-west-1" # not used since it's a DigitalOcean spaces bucket
    key                         = "terraform.tfstate"
    bucket                      = "kube-terraform-state" # The name of your Spaces

    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}

resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = "terraform-do-cluster"
  region  = "ams3" # set region
  version = "1.18.6-do.0" # check region

  tags = ["my-tag"]

  node_pool {
    name       = "default-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    node_count = 2
    min_nodes  = 1
    max_nodes  = 3
    tags       = ["devops-demo"]
    labels = {
      "environment" = "staging"
    }
  }
}

