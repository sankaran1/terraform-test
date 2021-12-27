terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-2"
  access_key = "KIA2PSOL46AU2EEVJ7Y"
  secret_key = "/AaQ7Q5WsIHcsdugUtqjJ2zBTmkgU4KlxNk0Kde7"

  # Allow any 2.x version of the AWS provider
#  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
tags = {
Name = "terraform-example"
}
}
#test