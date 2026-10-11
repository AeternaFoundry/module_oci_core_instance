variable "core_instances" {
  description = <<EOT
Map of core_instances, attributes below
Required:
    - availability_domain
    - compartment_id
Optional:
    - async
    - capacity_reservation_id
    - cluster_placement_group_id
    - compute_cluster_id
    - dedicated_vm_host_id
    - defined_tags
    - display_name
    - extended_metadata
    - fault_domain
    - freeform_tags
    - hostname_label
    - image
    - instance_configuration_id
    - ipxe_script
    - is_ai_enterprise_enabled
    - is_pv_encryption_in_transit_enabled
    - metadata
    - preserve_boot_volume
    - preserve_data_volumes_created_at_launch
    - security_attributes
    - shape
    - state
    - subnet_id
    - update_operation_constraint
    - agent_config (block):
        - are_all_plugins_disabled (optional)
        - is_management_disabled (optional)
        - is_monitoring_disabled (optional)
        - plugins_config (optional, block):
            - desired_state (required)
            - name (required)
    - availability_config (block):
        - is_live_migration_preferred (optional)
        - recovery_action (optional)
    - create_vnic_details (block):
        - assign_ipv6ip (optional)
        - assign_private_dns_record (optional)
        - assign_public_ip (optional)
        - defined_tags (optional)
        - display_name (optional)
        - freeform_tags (optional)
        - hostname_label (optional)
        - ipv6address_ipv6subnet_cidr_pair_details (optional, block):
            - ipv6address (optional)
            - ipv6id (optional)
            - ipv6subnet_cidr (optional)
        - nsg_ids (optional)
        - private_ip (optional)
        - private_ip_id (optional)
        - security_attributes (optional)
        - skip_source_dest_check (optional)
        - subnet_cidr (optional)
        - subnet_id (optional)
        - vlan_id (optional)
    - instance_options (block):
        - are_legacy_imds_endpoints_disabled (optional)
    - launch_options (block):
        - boot_volume_type (optional)
        - firmware (optional)
        - is_consistent_volume_naming_enabled (optional)
        - is_pv_encryption_in_transit_enabled (optional)
        - network_type (optional)
        - remote_data_volume_type (optional)
    - launch_volume_attachments (block):
        - device (optional)
        - display_name (optional)
        - encryption_in_transit_type (optional)
        - is_agent_auto_iscsi_login_enabled (optional)
        - is_pv_encryption_in_transit_enabled (optional)
        - is_read_only (optional)
        - is_shareable (optional)
        - launch_create_volume_details (optional, block):
            - compartment_id (optional)
            - display_name (optional)
            - kms_key_id (optional)
            - size_in_gbs (required)
            - volume_creation_type (required)
            - vpus_per_gb (optional)
        - type (required)
        - use_chap (optional)
        - volume_id (optional)
    - licensing_configs (block):
        - license_type (optional)
        - type (required)
    - placement_constraint_details (block):
        - compute_bare_metal_host_id (optional)
        - compute_host_group_id (optional)
        - type (required)
    - platform_config (block):
        - are_virtual_instructions_enabled (optional)
        - config_map (optional)
        - is_access_control_service_enabled (optional)
        - is_input_output_memory_management_unit_enabled (optional)
        - is_measured_boot_enabled (optional)
        - is_memory_encryption_enabled (optional)
        - is_secure_boot_enabled (optional)
        - is_symmetric_multi_threading_enabled (optional)
        - is_trusted_platform_module_enabled (optional)
        - numa_nodes_per_socket (optional)
        - percentage_of_cores_enabled (optional)
        - type (required)
    - preemptible_instance_config (block):
        - preemption_action (required, block):
            - preserve_boot_volume (optional)
            - type (required)
    - shape_config (block):
        - baseline_ocpu_utilization (optional)
        - local_volume_size_in_gbs (optional)
        - memory_in_gbs (optional)
        - nvmes (optional)
        - ocpus (optional)
        - resource_management (optional)
        - vcpus (optional)
    - source_details (block):
        - boot_volume_size_in_gbs (optional)
        - boot_volume_vpus_per_gb (optional)
        - instance_source_image_filter_details (optional, block):
            - compartment_id (required)
            - defined_tags_filter (optional)
            - operating_system (optional)
            - operating_system_version (optional)
        - is_preserve_boot_volume_enabled (optional)
        - kms_key_id (optional)
        - source_id (optional)
        - source_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain                     = string
    compartment_id                          = string
    async                                   = optional(bool)
    capacity_reservation_id                 = optional(string)
    cluster_placement_group_id              = optional(string)
    compute_cluster_id                      = optional(string)
    dedicated_vm_host_id                    = optional(string)
    defined_tags                            = optional(map(string))
    display_name                            = optional(string)
    extended_metadata                       = optional(map(string))
    fault_domain                            = optional(string)
    freeform_tags                           = optional(map(string))
    hostname_label                          = optional(string)
    image                                   = optional(string)
    instance_configuration_id               = optional(string)
    ipxe_script                             = optional(string)
    is_ai_enterprise_enabled                = optional(bool)
    is_pv_encryption_in_transit_enabled     = optional(bool)
    metadata                                = optional(map(string))
    preserve_boot_volume                    = optional(bool)
    preserve_data_volumes_created_at_launch = optional(bool)
    security_attributes                     = optional(map(string))
    shape                                   = optional(string)
    state                                   = optional(string)
    subnet_id                               = optional(string)
    update_operation_constraint             = optional(string)
    agent_config = optional(object({
      are_all_plugins_disabled = optional(bool)
      is_management_disabled   = optional(bool)
      is_monitoring_disabled   = optional(bool)
      plugins_config = optional(list(object({
        desired_state = string
        name          = string
      })))
    }))
    availability_config = optional(object({
      is_live_migration_preferred = optional(bool)
      recovery_action             = optional(string)
    }))
    create_vnic_details = optional(object({
      assign_ipv6ip             = optional(bool)
      assign_private_dns_record = optional(bool)
      assign_public_ip          = optional(string)
      defined_tags              = optional(map(string))
      display_name              = optional(string)
      freeform_tags             = optional(map(string))
      hostname_label            = optional(string)
      ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
        ipv6address     = optional(string)
        ipv6id          = optional(string)
        ipv6subnet_cidr = optional(string)
      })))
      nsg_ids                = optional(set(string))
      private_ip             = optional(string)
      private_ip_id          = optional(string)
      security_attributes    = optional(map(string))
      skip_source_dest_check = optional(bool)
      subnet_cidr            = optional(string)
      subnet_id              = optional(string)
      vlan_id                = optional(string)
    }))
    instance_options = optional(object({
      are_legacy_imds_endpoints_disabled = optional(bool)
    }))
    launch_options = optional(object({
      boot_volume_type                    = optional(string)
      firmware                            = optional(string)
      is_consistent_volume_naming_enabled = optional(bool)
      is_pv_encryption_in_transit_enabled = optional(bool)
      network_type                        = optional(string)
      remote_data_volume_type             = optional(string)
    }))
    launch_volume_attachments = optional(list(object({
      device                              = optional(string)
      display_name                        = optional(string)
      encryption_in_transit_type          = optional(string)
      is_agent_auto_iscsi_login_enabled   = optional(bool)
      is_pv_encryption_in_transit_enabled = optional(bool)
      is_read_only                        = optional(bool)
      is_shareable                        = optional(bool)
      launch_create_volume_details = optional(object({
        compartment_id       = optional(string)
        display_name         = optional(string)
        kms_key_id           = optional(string)
        size_in_gbs          = string
        volume_creation_type = string
        vpus_per_gb          = optional(string)
      }))
      type      = string
      use_chap  = optional(bool)
      volume_id = optional(string)
    })))
    licensing_configs = optional(object({
      license_type = optional(string)
      type         = string
    }))
    placement_constraint_details = optional(object({
      compute_bare_metal_host_id = optional(string)
      compute_host_group_id      = optional(string)
      type                       = string
    }))
    platform_config = optional(object({
      are_virtual_instructions_enabled               = optional(bool)
      config_map                                     = optional(map(string))
      is_access_control_service_enabled              = optional(bool)
      is_input_output_memory_management_unit_enabled = optional(bool)
      is_measured_boot_enabled                       = optional(bool)
      is_memory_encryption_enabled                   = optional(bool)
      is_secure_boot_enabled                         = optional(bool)
      is_symmetric_multi_threading_enabled           = optional(bool)
      is_trusted_platform_module_enabled             = optional(bool)
      numa_nodes_per_socket                          = optional(string)
      percentage_of_cores_enabled                    = optional(number)
      type                                           = string
    }))
    preemptible_instance_config = optional(object({
      preemption_action = object({
        preserve_boot_volume = optional(bool)
        type                 = string
      })
    }))
    shape_config = optional(object({
      baseline_ocpu_utilization = optional(string)
      local_volume_size_in_gbs  = optional(number)
      memory_in_gbs             = optional(number)
      nvmes                     = optional(number)
      ocpus                     = optional(number)
      resource_management       = optional(string)
      vcpus                     = optional(number)
    }))
    source_details = optional(object({
      boot_volume_size_in_gbs = optional(string)
      boot_volume_vpus_per_gb = optional(string)
      instance_source_image_filter_details = optional(object({
        compartment_id           = string
        defined_tags_filter      = optional(map(string))
        operating_system         = optional(string)
        operating_system_version = optional(string)
      }))
      is_preserve_boot_volume_enabled = optional(bool)
      kms_key_id                      = optional(string)
      source_id                       = optional(string)
      source_type                     = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.launch_volume_attachments == null || alltrue([for item in v.launch_volume_attachments : (contains([for v in ["iscsi", "paravirtualized"] : lower(v)], lower(item.type)))])
      )
    ])
    error_message = "must be one of: \"iscsi\", \"paravirtualized\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.launch_volume_attachments == null || alltrue([for item in v.launch_volume_attachments : (item.launch_create_volume_details == null || (contains([for v in ["ATTRIBUTES"] : lower(v)], lower(item.launch_create_volume_details.volume_creation_type))))])
      )
    ])
    error_message = "must be one of: \"ATTRIBUTES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.placement_constraint_details == null || (contains([for v in ["COMPUTE_BARE_METAL_HOST", "HOST_GROUP"] : lower(v)], lower(v.placement_constraint_details.type)))
      )
    ])
    error_message = "must be one of: \"COMPUTE_BARE_METAL_HOST\", \"HOST_GROUP\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.platform_config == null || (contains([for v in ["AMD_MILAN_BM", "AMD_MILAN_BM_GPU", "AMD_ROME_BM", "AMD_ROME_BM_GPU", "AMD_VM", "GENERIC_BM", "INTEL_ICELAKE_BM", "INTEL_SKYLAKE_BM", "INTEL_VM"] : lower(v)], lower(v.platform_config.type)))
      )
    ])
    error_message = "must be one of: \"AMD_MILAN_BM\", \"AMD_MILAN_BM_GPU\", \"AMD_ROME_BM\", \"AMD_ROME_BM_GPU\", \"AMD_VM\", \"GENERIC_BM\", \"INTEL_ICELAKE_BM\", \"INTEL_SKYLAKE_BM\", \"INTEL_VM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.preemptible_instance_config == null || (contains([for v in ["TERMINATE"] : lower(v)], lower(v.preemptible_instance_config.preemption_action.type)))
      )
    ])
    error_message = "must be one of: \"TERMINATE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.source_details == null || (contains([for v in ["bootVolume", "image"] : lower(v)], lower(v.source_details.source_type)))
      )
    ])
    error_message = "must be one of: \"bootVolume\", \"image\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instances : (
        v.state == null || (contains([for v in ["STOPPED", "RUNNING"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"STOPPED\", \"RUNNING\""
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

