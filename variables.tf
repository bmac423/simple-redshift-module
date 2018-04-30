variable "cluster_name" {
  type    = "string"
  default = "redshift-dev"
}

variable "node_type" {
  type    = "string"
  default = "dc1.large"
}

variable "node_count" {
  type    = "string"
  default = "3"
}

variable "charge_code" {
  type    = "string"
  default = "redshift-dev"
}

variable "database_name" {
  type    = "string"
  default = "dev"
}

variable "master_username" {
  type    = "string"
  default = "admin"
}

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
