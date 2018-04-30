resource "aws_iam_role" "redshift_s3_access" {
  name               = "S3-Access"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "redshift_s3_access" {
  name = "s3-read-only"
  roles = ["${aws_iam_role.redshift_s3_access.name}"]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

resource "aws_s3_bucket" "this" {
  bucket = "redshift-${var.charge_code}-bucket"
  acl    = "private"
  tags {
    charge_code = "${var.charge_code}"
  }
}

resource "aws_redshift_cluster" "this" {
  cluster_identifier                  = "${var.cluster_name}"
  node_type                           = "${var.node_type}"
  number_of_nodes                     = "${var.node_count}"
  database_name                       = "${var.database_name}"
  master_username                     = "${var.master_username}"
  master_password                     = "${var.master_password}"
  iam_roles                           = ["${aws_iam_role.redshift_s3_access.arn}"]
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  automated_snapshot_retention_period = "${var.automated_snapshot_retention_period}"
  tags                                = {
    charge_code = "${var.charge_code}"
  }
}
