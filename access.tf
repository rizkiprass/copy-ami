//Source Region
provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

//Destination Region
provider "aws" {
  alias = "dest"

  region     = "us-east-1"
  access_key_2 = ""
  secret_key_2 = ""
}