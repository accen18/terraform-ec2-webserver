
output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "Public IPv4 address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "website_url" {
  description = "URL of the hosted website"
  value       = "http://${aws_instance.web.public_ip}"
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

