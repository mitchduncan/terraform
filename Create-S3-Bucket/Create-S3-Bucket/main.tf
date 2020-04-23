#-------------------------------
# Create  an S3 bucket
#-------------------------------

resource "aws_s3_bucket" "bucket" {
  acl             = var.bucket_acl
  bucket          = var.bucket_id
  region          = var.bucket_region
}
