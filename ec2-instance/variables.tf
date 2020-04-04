variable "region" {
  default = "us-east-1"
}

output "ip" {
  value = aws_eip.ip.public_ip
}
