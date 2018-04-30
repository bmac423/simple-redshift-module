# Returns the endpoint for the Redshift cluster
output "redshift_endpoint" {
  description = "The redshift endpoint."
  value       = "${aws_redshift_cluster.this.endpoint}"
}

# Returns the ARN of the S3 bucket.
output "s3_arn" {
  description = "The ARN of the S3 bucket."
  value       = "${aws_s3_bucket.this.arn}"
}
