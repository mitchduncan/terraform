#-------------------------------
# Create  an S3 bucket
#-------------------------------

# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "default"
}

resource "aws_s3_bucket" "bucket" {
  bucket          = "mdfunkybucketname"
  region          = "us-east-1"
}
