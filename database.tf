resource "oci_database_autonomous_database" "oci_database_autonomous_database" {
  admin_password                         = var.db_admin_password
  autonomous_maintenance_schedule_type   = "REGULAR"
  compartment_id                         = var.compartment_id
  compute_count                          = 1
  compute_model                          = "ECPU"
  data_storage_size_in_gb                = 20
  db_name                                = "AHDVKLRV7J86O47V"
  db_version                             = "19c"
  db_workload                            = "LH"
  display_name                           = "db-youngwon-prod"
  is_auto_scaling_enabled                = false
  is_dedicated                           = false
  is_free_tier                           = true
  is_mtls_connection_required            = false
  license_model                          = "LICENSE_INCLUDED"
  whitelisted_ips                        = var.db_whitelisted_ips

  customer_contacts {
    email = var.db_customer_contact_email
  }

  lifecycle {
    ignore_changes = [
      admin_password,
    ]
  }
}
