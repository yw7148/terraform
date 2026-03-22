resource "oci_core_instance" "instance_control" {
  async                      = null
  availability_domain        = "LfaV:AP-CHUNCHEON-1-AD-1"
  cluster_placement_group_id = null
  compartment_id             = var.compartment_id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = var.oracle_tags_created_by
    "Oracle-Tags.CreatedOn" = "2026-03-17T12:10:39.747Z"
  }
  display_name      = "instance-control"
  extended_metadata = {}
  fault_domain      = "FAULT-DOMAIN-3"
  freeform_tags     = {}
  metadata = {
    ssh_authorized_keys = var.instance_ssh_authorized_keys
  }
  preserve_boot_volume                    = null
  preserve_data_volumes_created_at_launch = null
  security_attributes                     = {}
  shape                                   = "VM.Standard.A1.Flex"
  state                                   = "RUNNING"
  update_operation_constraint             = null

  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false

    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Fleet Application Management Service"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    is_live_migration_preferred = false
    recovery_action             = "RESTORE_INSTANCE"
  }

  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = "true"
    defined_tags = {
      "Oracle-Tags.CreatedBy" = var.oracle_tags_created_by
      "Oracle-Tags.CreatedOn" = "2026-03-17T12:10:39.869Z"
    }
    display_name           = "instance-control"
    freeform_tags          = {}
    hostname_label         = "instance-control"
    nsg_ids                = []
    private_ip             = "10.0.0.195"
    security_attributes    = {}
    skip_source_dest_check = false
    subnet_id              = "ocid1.subnet.oc1.ap-chuncheon-1.aaaaaaaayxegrguiqi76lr24whw6yeovqgbjojed75scr2hmow7x4jxpyfwa"
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }

  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    is_pv_encryption_in_transit_enabled = false
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }

  shape_config {
    memory_in_gbs = 6
    nvmes         = 0
    ocpus         = 1
    vcpus         = 1
  }

  source_details {
    boot_volume_size_in_gbs         = "47"
    boot_volume_vpus_per_gb         = "10"
    is_preserve_boot_volume_enabled = false
    kms_key_id                      = null
    source_id                       = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaafq2aczroo7aayjokecz5ajczo4mkzftn32s7z2xnj2vt5d625ira"
    source_type                     = "image"
  }
}

resource "oci_core_instance" "instance_worker_1" {
  async                      = null
  availability_domain        = "LfaV:AP-CHUNCHEON-1-AD-1"
  cluster_placement_group_id = null
  compartment_id             = var.compartment_id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = var.oracle_tags_created_by
    "Oracle-Tags.CreatedOn" = "2026-03-19T15:22:42.279Z"
  }
  display_name      = "instance-worker-1"
  extended_metadata = {}
  fault_domain      = "FAULT-DOMAIN-2"
  freeform_tags     = {}
  metadata = {
    ssh_authorized_keys = var.instance_ssh_authorized_keys
  }
  preserve_boot_volume                    = null
  preserve_data_volumes_created_at_launch = null
  security_attributes                     = {}
  shape                                   = "VM.Standard.A1.Flex"
  state                                   = "RUNNING"
  update_operation_constraint             = null

  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false

    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Fleet Application Management Service"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    is_live_migration_preferred = false
    recovery_action             = "RESTORE_INSTANCE"
  }

  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = "true"
    defined_tags = {
      "Oracle-Tags.CreatedBy" = var.oracle_tags_created_by
      "Oracle-Tags.CreatedOn" = "2026-03-19T15:22:42.410Z"
    }
    display_name           = "instance-worker-1"
    freeform_tags          = {}
    hostname_label         = "instance-worker-1"
    nsg_ids                = []
    private_ip             = "10.0.0.149"
    security_attributes    = {}
    skip_source_dest_check = false
    subnet_id              = "ocid1.subnet.oc1.ap-chuncheon-1.aaaaaaaayxegrguiqi76lr24whw6yeovqgbjojed75scr2hmow7x4jxpyfwa"
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }

  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    is_pv_encryption_in_transit_enabled = true
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }

  shape_config {
    memory_in_gbs = 9
    nvmes         = 0
    ocpus         = 2
    vcpus         = 2
  }

  source_details {
    boot_volume_size_in_gbs         = "47"
    boot_volume_vpus_per_gb         = "10"
    is_preserve_boot_volume_enabled = false
    kms_key_id                      = null
    source_id                       = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaafq2aczroo7aayjokecz5ajczo4mkzftn32s7z2xnj2vt5d625ira"
    source_type                     = "image"
  }
}

resource "oci_core_instance" "instance_worker_2" {
  async                      = null
  availability_domain        = "LfaV:AP-CHUNCHEON-1-AD-1"
  cluster_placement_group_id = null
  compartment_id             = var.compartment_id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = var.oracle_tags_created_by
    "Oracle-Tags.CreatedOn" = "2026-03-19T15:23:37.183Z"
  }
  display_name      = "instance-worker-2"
  extended_metadata = {}
  fault_domain      = "FAULT-DOMAIN-2"
  freeform_tags     = {}
  metadata = {
    ssh_authorized_keys = var.instance_ssh_authorized_keys
  }
  preserve_boot_volume                    = null
  preserve_data_volumes_created_at_launch = null
  security_attributes                     = {}
  shape                                   = "VM.Standard.A1.Flex"
  state                                   = "RUNNING"
  update_operation_constraint             = null

  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false

    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Fleet Application Management Service"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    is_live_migration_preferred = false
    recovery_action             = "RESTORE_INSTANCE"
  }

  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = "true"
    defined_tags = {
      "Oracle-Tags.CreatedBy" = var.oracle_tags_created_by
      "Oracle-Tags.CreatedOn" = "2026-03-19T15:23:37.281Z"
    }
    display_name           = "instance-worker-2"
    freeform_tags          = {}
    hostname_label         = "instance-worker-2"
    nsg_ids                = []
    private_ip             = "10.0.0.81"
    security_attributes    = {}
    skip_source_dest_check = false
    subnet_id              = "ocid1.subnet.oc1.ap-chuncheon-1.aaaaaaaayxegrguiqi76lr24whw6yeovqgbjojed75scr2hmow7x4jxpyfwa"
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }

  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    is_pv_encryption_in_transit_enabled = true
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }

  shape_config {
    memory_in_gbs = 9
    nvmes         = 0
    ocpus         = 1
    vcpus         = 1
  }

  source_details {
    boot_volume_size_in_gbs         = "47"
    boot_volume_vpus_per_gb         = "10"
    is_preserve_boot_volume_enabled = false
    kms_key_id                      = null
    source_id                       = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaafq2aczroo7aayjokecz5ajczo4mkzftn32s7z2xnj2vt5d625ira"
    source_type                     = "image"
  }
}
