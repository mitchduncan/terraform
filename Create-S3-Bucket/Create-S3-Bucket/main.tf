#-------------------------------
# Create  an S3 bucket
#-------------------------------

resource "aws_s3_bucket" "bucket" {
  bucket          = var.bucket_name
  acl             = var.bucket_acl
  region          = var.bucket_region
}
