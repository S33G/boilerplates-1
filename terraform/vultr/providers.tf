#===============================================================================
# Vultr Provider
#===============================================================================

terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.15.1"
    }
    sops = { 
      source = "carlpett/sops"
      version = "0.7.2"
    }
  }
}

data "sops_file" "vsphere-secrets" {
  source_file = "../terraform.sops.yaml"
}

# Configure the Vultr Provider
provider "vultr" {
  api_key = "${data.sops_file.vsphere-secrets.data["vultr_api_key"]}"
  rate_limit = 100
  retry_limit = 3
}