# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

resource "aws_instance" "mdtestvm" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

