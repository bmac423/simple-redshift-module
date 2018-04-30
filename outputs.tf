output "redshift_endpoint" {
  description = "The redshift endpoint."
  value       = "${aws_redshift_cluster.this.endpoint}"
}

output "s3_arn" {
  description = "The ARN of the S3 bucket."
  value       = "${aws_s3_bucket.this.arn}"
}
