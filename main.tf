resource "oci_core_instance" "core_instances" {
  for_each = var.core_instances

  availability_domain                     = each.value.availability_domain
  compartment_id                          = each.value.compartment_id
  async                                   = each.value.async
  capacity_reservation_id                 = each.value.capacity_reservation_id
  cluster_placement_group_id              = each.value.cluster_placement_group_id
  compute_cluster_id                      = each.value.compute_cluster_id
  dedicated_vm_host_id                    = each.value.dedicated_vm_host_id
  defined_tags                            = each.value.defined_tags
  display_name                            = each.value.display_name
  extended_metadata                       = each.value.extended_metadata
  fault_domain                            = each.value.fault_domain
  freeform_tags                           = each.value.freeform_tags
  hostname_label                          = each.value.hostname_label
  image                                   = each.value.image
  instance_configuration_id               = each.value.instance_configuration_id
  ipxe_script                             = each.value.ipxe_script
  is_ai_enterprise_enabled                = each.value.is_ai_enterprise_enabled
  is_pv_encryption_in_transit_enabled     = each.value.is_pv_encryption_in_transit_enabled
  metadata                                = each.value.metadata
  preserve_boot_volume                    = each.value.preserve_boot_volume
  preserve_data_volumes_created_at_launch = each.value.preserve_data_volumes_created_at_launch
  security_attributes                     = each.value.security_attributes
  shape                                   = each.value.shape
  state                                   = each.value.state
  subnet_id                               = each.value.subnet_id
  update_operation_constraint             = each.value.update_operation_constraint

  dynamic "agent_config" {
    for_each = each.value.agent_config != null ? [each.value.agent_config] : []
    content {
      are_all_plugins_disabled = agent_config.value.are_all_plugins_disabled
      is_management_disabled   = agent_config.value.is_management_disabled
      is_monitoring_disabled   = agent_config.value.is_monitoring_disabled
      dynamic "plugins_config" {
        for_each = agent_config.value.plugins_config != null ? agent_config.value.plugins_config : []
        content {
          desired_state = plugins_config.value.desired_state
          name          = plugins_config.value.name
        }
      }
    }
  }

  dynamic "availability_config" {
    for_each = each.value.availability_config != null ? [each.value.availability_config] : []
    content {
      is_live_migration_preferred = availability_config.value.is_live_migration_preferred
      recovery_action             = availability_config.value.recovery_action
    }
  }

  dynamic "create_vnic_details" {
    for_each = each.value.create_vnic_details != null ? [each.value.create_vnic_details] : []
    content {
      assign_ipv6ip             = create_vnic_details.value.assign_ipv6ip
      assign_private_dns_record = create_vnic_details.value.assign_private_dns_record
      assign_public_ip          = create_vnic_details.value.assign_public_ip
      defined_tags              = create_vnic_details.value.defined_tags
      display_name              = create_vnic_details.value.display_name
      freeform_tags             = create_vnic_details.value.freeform_tags
      hostname_label            = create_vnic_details.value.hostname_label
      dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
        for_each = create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details != null ? create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details : []
        content {
          ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
          ipv6id          = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6id
          ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
        }
      }
      nsg_ids                = create_vnic_details.value.nsg_ids
      private_ip             = create_vnic_details.value.private_ip
      private_ip_id          = create_vnic_details.value.private_ip_id
      security_attributes    = create_vnic_details.value.security_attributes
      skip_source_dest_check = create_vnic_details.value.skip_source_dest_check
      subnet_cidr            = create_vnic_details.value.subnet_cidr
      subnet_id              = create_vnic_details.value.subnet_id
      vlan_id                = create_vnic_details.value.vlan_id
    }
  }

  dynamic "instance_options" {
    for_each = each.value.instance_options != null ? [each.value.instance_options] : []
    content {
      are_legacy_imds_endpoints_disabled = instance_options.value.are_legacy_imds_endpoints_disabled
    }
  }

  dynamic "launch_options" {
    for_each = each.value.launch_options != null ? [each.value.launch_options] : []
    content {
      boot_volume_type                    = launch_options.value.boot_volume_type
      firmware                            = launch_options.value.firmware
      is_consistent_volume_naming_enabled = launch_options.value.is_consistent_volume_naming_enabled
      is_pv_encryption_in_transit_enabled = launch_options.value.is_pv_encryption_in_transit_enabled
      network_type                        = launch_options.value.network_type
      remote_data_volume_type             = launch_options.value.remote_data_volume_type
    }
  }

  dynamic "launch_volume_attachments" {
    for_each = each.value.launch_volume_attachments != null ? each.value.launch_volume_attachments : []
    content {
      device                              = launch_volume_attachments.value.device
      display_name                        = launch_volume_attachments.value.display_name
      encryption_in_transit_type          = launch_volume_attachments.value.encryption_in_transit_type
      is_agent_auto_iscsi_login_enabled   = launch_volume_attachments.value.is_agent_auto_iscsi_login_enabled
      is_pv_encryption_in_transit_enabled = launch_volume_attachments.value.is_pv_encryption_in_transit_enabled
      is_read_only                        = launch_volume_attachments.value.is_read_only
      is_shareable                        = launch_volume_attachments.value.is_shareable
      dynamic "launch_create_volume_details" {
        for_each = launch_volume_attachments.value.launch_create_volume_details != null ? [launch_volume_attachments.value.launch_create_volume_details] : []
        content {
          compartment_id       = launch_create_volume_details.value.compartment_id
          display_name         = launch_create_volume_details.value.display_name
          kms_key_id           = launch_create_volume_details.value.kms_key_id
          size_in_gbs          = launch_create_volume_details.value.size_in_gbs
          volume_creation_type = launch_create_volume_details.value.volume_creation_type
          vpus_per_gb          = launch_create_volume_details.value.vpus_per_gb
        }
      }
      type      = launch_volume_attachments.value.type
      use_chap  = launch_volume_attachments.value.use_chap
      volume_id = launch_volume_attachments.value.volume_id
    }
  }

  dynamic "licensing_configs" {
    for_each = each.value.licensing_configs != null ? [each.value.licensing_configs] : []
    content {
      license_type = licensing_configs.value.license_type
      type         = licensing_configs.value.type
    }
  }

  dynamic "placement_constraint_details" {
    for_each = each.value.placement_constraint_details != null ? [each.value.placement_constraint_details] : []
    content {
      compute_bare_metal_host_id = placement_constraint_details.value.compute_bare_metal_host_id
      compute_host_group_id      = placement_constraint_details.value.compute_host_group_id
      type                       = placement_constraint_details.value.type
    }
  }

  dynamic "platform_config" {
    for_each = each.value.platform_config != null ? [each.value.platform_config] : []
    content {
      are_virtual_instructions_enabled               = platform_config.value.are_virtual_instructions_enabled
      config_map                                     = platform_config.value.config_map
      is_access_control_service_enabled              = platform_config.value.is_access_control_service_enabled
      is_input_output_memory_management_unit_enabled = platform_config.value.is_input_output_memory_management_unit_enabled
      is_measured_boot_enabled                       = platform_config.value.is_measured_boot_enabled
      is_memory_encryption_enabled                   = platform_config.value.is_memory_encryption_enabled
      is_secure_boot_enabled                         = platform_config.value.is_secure_boot_enabled
      is_symmetric_multi_threading_enabled           = platform_config.value.is_symmetric_multi_threading_enabled
      is_trusted_platform_module_enabled             = platform_config.value.is_trusted_platform_module_enabled
      numa_nodes_per_socket                          = platform_config.value.numa_nodes_per_socket
      percentage_of_cores_enabled                    = platform_config.value.percentage_of_cores_enabled
      type                                           = platform_config.value.type
    }
  }

  dynamic "preemptible_instance_config" {
    for_each = each.value.preemptible_instance_config != null ? [each.value.preemptible_instance_config] : []
    content {
      preemption_action {
        preserve_boot_volume = preemptible_instance_config.value.preemption_action.preserve_boot_volume
        type                 = preemptible_instance_config.value.preemption_action.type
      }
    }
  }

  dynamic "shape_config" {
    for_each = each.value.shape_config != null ? [each.value.shape_config] : []
    content {
      baseline_ocpu_utilization = shape_config.value.baseline_ocpu_utilization
      local_volume_size_in_gbs  = shape_config.value.local_volume_size_in_gbs
      memory_in_gbs             = shape_config.value.memory_in_gbs
      nvmes                     = shape_config.value.nvmes
      ocpus                     = shape_config.value.ocpus
      resource_management       = shape_config.value.resource_management
      vcpus                     = shape_config.value.vcpus
    }
  }

  dynamic "source_details" {
    for_each = each.value.source_details != null ? [each.value.source_details] : []
    content {
      boot_volume_size_in_gbs = source_details.value.boot_volume_size_in_gbs
      boot_volume_vpus_per_gb = source_details.value.boot_volume_vpus_per_gb
      dynamic "instance_source_image_filter_details" {
        for_each = source_details.value.instance_source_image_filter_details != null ? [source_details.value.instance_source_image_filter_details] : []
        content {
          compartment_id           = instance_source_image_filter_details.value.compartment_id
          defined_tags_filter      = instance_source_image_filter_details.value.defined_tags_filter
          operating_system         = instance_source_image_filter_details.value.operating_system
          operating_system_version = instance_source_image_filter_details.value.operating_system_version
        }
      }
      is_preserve_boot_volume_enabled = source_details.value.is_preserve_boot_volume_enabled
      kms_key_id                      = source_details.value.kms_key_id
      source_id                       = source_details.value.source_id
      source_type                     = source_details.value.source_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

