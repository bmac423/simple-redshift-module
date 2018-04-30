# Simple Redshift Module

This is a basic AWS Redshift Module that will stand up a Redshift cluster with access to an S3 Bucket.

## Usage

```
module "redshift" {
  cluster_name        = "redshift-dev"
  node_type           = "dc1.large"
  node_count          = "3"
  charge_code         = "redshift-dev"
  database_name       = "dev"
  master_username     = "admin"
  master_password     = "your-password"
  skip_final_snapshot = "true"
}
```
