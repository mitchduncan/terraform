# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

resource "aws_s3_bucket" "mdlths1982bucke" {
  bucket = "mdlthsnewbucket1982"
  acl    = "public-read"
}
