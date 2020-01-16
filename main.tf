# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "mdtestvm2" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "mdlthsbucketname401" {
  bucket = "mdlthsnewbucketprice"
  acl    = "public-read"
}
