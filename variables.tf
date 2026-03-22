variable "compartment_id" {
  type = string
}

variable "db_admin_password" {
  type      = string
  sensitive = true
}

variable "db_customer_contact_email" {
  type = string
}

variable "db_whitelisted_ips" {
  type = list(string)
}

variable "instance_ssh_authorized_keys" {
  type = string
}

variable "oracle_tags_created_by" {
  type = string
}
