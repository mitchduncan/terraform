provider "aws" {
  profile    = "default"
  region     = var.region
}

# Change the aws_instance we declared earlier to now include "depends_on"
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  #provisioner block_device
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }

  # Tells Terraform that this EC2 instance must be created only after the
  # S3 bucket has been created.
  depends_on = [aws_s3_bucket.example]
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}

# resource "aws_instance" "another" {
#   ami           = "ami-b374d5a5"
#   instance_type = "t2.micro"
# }

resource "aws_s3_bucket" "example" {
  bucket          = "mdfunkybucketname"
  region          = "us-east-1"
}

output "ip" {
  value = aws_eip.ip.public_ip
}
