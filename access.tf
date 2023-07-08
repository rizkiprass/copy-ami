//Source Region
provider "aws" {
  region     = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

//Destination Region
provider "aws" {
  alias = "dest"

  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  cloud {
    hostname = "app.terraform.io" # Optional for TFC
    organization = "pras"

    workspaces {
      name = "copy-ami"
    }
  }
}

variable "access_key" {}

variable "secret_key" {}
