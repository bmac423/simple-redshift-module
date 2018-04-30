# General descriptor for the cluster
variable "cluster_name" {
  type    = "string"
  default = "redshift-dev"
}

# The type of EC2 instance to be used for the cluster
variable "node_type" {
  type    = "string"
  default = "dc1.large"
}

# The number of nodes in the cluster
variable "node_count" {
  type    = "string"
  default = "3"
}

# Business charge code assocated with the cluster
variable "charge_code" {
  type    = "string"
  default = "redshift-dev"
}

# The name of the created database
variable "database_name" {
  type    = "string"
  default = "dev"
}

# Username for the database
variable "master_username" {
  type    = "string"
  default = "admin"
}

# Password for the database
variable "master_password" {
  type    = "string"
  default = "Adm1nAdm1n"
}

variable "automated_snapshot_retention_period" {
  type    = "string"
  default = "0"
}

variable "skip_final_snapshot" {
  type    = "string"
  default = "true"
}
