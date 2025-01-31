terraform {
  required_providers {
    ciscomcd = {
      source = "CiscoDevNet/ciscomcd"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "ciscomcd" {
  api_key_file = file("./mcd-key.json")
}


provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}