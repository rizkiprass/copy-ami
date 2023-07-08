//Source Region
provider "aws" {
  region     = var.src-region
  access_key = var.access_key
  secret_key = var.secret_key
}

//Destination Region
provider "aws" {
  alias = "dest"

  region     = var.dest-region
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

variable "src-region" {
  default = "us-west-2"
}

variable "dest-region" {
  default = "us-east-1"
}
