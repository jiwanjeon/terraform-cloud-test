# terraform {
#   cloud {
#     organization = "jeonjiwan"

#     workspaces {
#       name = "terraform-cloud-test-dev"
#     }
#   }
# }
provider "aws" {
  region = "ap-northeast-2"
  access_key = "AKIA5T5J5373TD2GK5WG"
  secret_key = "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"
}

resource "aws_subnet" "subnet-1" {
  vpc_id = "vpc-05397ee1bcd1b5f72"
  cidr_block = "10.10.8.0/24"
  availability_zone =  "ap-northeast-2a"

  tags = {
    Name = "(BEFORE)Terraform-Cloud-Test-1"
  }
}