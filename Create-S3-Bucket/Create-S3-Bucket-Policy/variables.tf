#-------------------------------
# Create  an S3 bucket
#-------------------------------

variable "bucket_policy" {
  default = "private"
}

variable "bucket_id" {
  default = "mdcabuck3"
}

variable "bucket_region" {
  default = "us-east-1"
}
