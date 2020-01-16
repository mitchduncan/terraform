# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

resource "aws_s3_bucket" "mdlths1982bucke" {
  bucket = "mdlthsnewbucket1982"
  acl    = "public-read"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
