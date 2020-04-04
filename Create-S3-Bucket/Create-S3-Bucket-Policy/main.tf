#-------------------------------
# Create  an S3 bucket policy
#-------------------------------

resource "aws_s3_bucket_policy" "policy" {
  bucket        = var.bucket_id
  policy        = var.bucket_policy
}
