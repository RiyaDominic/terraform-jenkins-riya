
output "instance_public_ip" {
  value = aws_instance.riya_ec2.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.riya_bucket.bucket
}
