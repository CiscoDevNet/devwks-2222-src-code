terraform {
  required_providers {
    ciscomcd = {
      source = "CiscoDevNet/ciscomcd"
    #   version = "0.2.9"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "ciscomcd" {
  # Configuration options
  api_key_file = file("./kgreeshm-clemea-key.json")
}


provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}