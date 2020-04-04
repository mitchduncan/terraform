#-------------------------------
# Create  an S3 bucket
#-------------------------------

variable "bucket_acl" {
  default = "private"
}

variable "bucket_name" {
  default = "mdbuck4"
}

variable "bucket_region" {
  default = "us-east-1"
}
