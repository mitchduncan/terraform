#-------------------------------
# Create  an S3 bucket
#-------------------------------

variable "bucket_acl" {
  default = "private"
}

variable "bucket_id" {
  default = "mdbucks3"
}

variable "bucket_region" {
  default = "us-east-1"
}
