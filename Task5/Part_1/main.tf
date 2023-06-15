# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-050b03bcfd6e1ddbd"
  instance_type = "t2.micro"
  count         = 4
  tags = {
    "name"  = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  ami           = "ami-0e52a86e3f951f96f"
  instance_type = "m4.large"
  count         = 2 # Set count to 0 to delete the instances
  tags = {
    "name"  = "Udacity M4"
  }
}
