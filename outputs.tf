output "core_instances_id" {
  description = "Map of id values across all core_instances, keyed the same as var.core_instances except keys with no id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_instances_agent_config" {
  description = "Map of agent_config values across all core_instances, keyed the same as var.core_instances except keys with no agent_config are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.agent_config) if v.agent_config != null && length(v.agent_config) > 0 }
}
output "core_instances_async" {
  description = "Map of async values across all core_instances, keyed the same as var.core_instances except keys with no async are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.async if v.async != null }
}
output "core_instances_availability_config" {
  description = "Map of availability_config values across all core_instances, keyed the same as var.core_instances except keys with no availability_config are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.availability_config) if v.availability_config != null && length(v.availability_config) > 0 }
}
output "core_instances_availability_domain" {
  description = "Map of availability_domain values across all core_instances, keyed the same as var.core_instances except keys with no availability_domain are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_instances_boot_volume_id" {
  description = "Map of boot_volume_id values across all core_instances, keyed the same as var.core_instances except keys with no boot_volume_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.boot_volume_id if v.boot_volume_id != null && length(v.boot_volume_id) > 0 }
}
output "core_instances_capacity_reservation_id" {
  description = "Map of capacity_reservation_id values across all core_instances, keyed the same as var.core_instances except keys with no capacity_reservation_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.capacity_reservation_id if v.capacity_reservation_id != null && length(v.capacity_reservation_id) > 0 }
}
output "core_instances_cluster_placement_group_id" {
  description = "Map of cluster_placement_group_id values across all core_instances, keyed the same as var.core_instances except keys with no cluster_placement_group_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.cluster_placement_group_id if v.cluster_placement_group_id != null && length(v.cluster_placement_group_id) > 0 }
}
output "core_instances_compartment_id" {
  description = "Map of compartment_id values across all core_instances, keyed the same as var.core_instances except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_instances_compute_cluster_id" {
  description = "Map of compute_cluster_id values across all core_instances, keyed the same as var.core_instances except keys with no compute_cluster_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.compute_cluster_id if v.compute_cluster_id != null && length(v.compute_cluster_id) > 0 }
}
output "core_instances_create_vnic_details" {
  description = "Map of create_vnic_details values across all core_instances, keyed the same as var.core_instances except keys with no create_vnic_details are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.create_vnic_details) if v.create_vnic_details != null && length(v.create_vnic_details) > 0 }
}
output "core_instances_dedicated_vm_host_id" {
  description = "Map of dedicated_vm_host_id values across all core_instances, keyed the same as var.core_instances except keys with no dedicated_vm_host_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.dedicated_vm_host_id if v.dedicated_vm_host_id != null && length(v.dedicated_vm_host_id) > 0 }
}
output "core_instances_defined_tags" {
  description = "Map of defined_tags values across all core_instances, keyed the same as var.core_instances except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_instances_display_name" {
  description = "Map of display_name values across all core_instances, keyed the same as var.core_instances except keys with no display_name are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_instances_extended_metadata" {
  description = "Map of extended_metadata values across all core_instances, keyed the same as var.core_instances except keys with no extended_metadata are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.extended_metadata if v.extended_metadata != null && length(v.extended_metadata) > 0 }
}
output "core_instances_fault_domain" {
  description = "Map of fault_domain values across all core_instances, keyed the same as var.core_instances except keys with no fault_domain are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.fault_domain if v.fault_domain != null && length(v.fault_domain) > 0 }
}
output "core_instances_freeform_tags" {
  description = "Map of freeform_tags values across all core_instances, keyed the same as var.core_instances except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_instances_hostname_label" {
  description = "Map of hostname_label values across all core_instances, keyed the same as var.core_instances except keys with no hostname_label are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.hostname_label if v.hostname_label != null && length(v.hostname_label) > 0 }
}
output "core_instances_image" {
  description = "Map of image values across all core_instances, keyed the same as var.core_instances except keys with no image are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.image if v.image != null && length(v.image) > 0 }
}
output "core_instances_instance_configuration_id" {
  description = "Map of instance_configuration_id values across all core_instances, keyed the same as var.core_instances except keys with no instance_configuration_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.instance_configuration_id if v.instance_configuration_id != null && length(v.instance_configuration_id) > 0 }
}
output "core_instances_instance_options" {
  description = "Map of instance_options values across all core_instances, keyed the same as var.core_instances except keys with no instance_options are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.instance_options) if v.instance_options != null && length(v.instance_options) > 0 }
}
output "core_instances_ipxe_script" {
  description = "Map of ipxe_script values across all core_instances, keyed the same as var.core_instances except keys with no ipxe_script are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.ipxe_script if v.ipxe_script != null && length(v.ipxe_script) > 0 }
}
output "core_instances_is_ai_enterprise_enabled" {
  description = "Map of is_ai_enterprise_enabled values across all core_instances, keyed the same as var.core_instances except keys with no is_ai_enterprise_enabled are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.is_ai_enterprise_enabled if v.is_ai_enterprise_enabled != null }
}
output "core_instances_is_cross_numa_node" {
  description = "Map of is_cross_numa_node values across all core_instances, keyed the same as var.core_instances except keys with no is_cross_numa_node are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.is_cross_numa_node if v.is_cross_numa_node != null }
}
output "core_instances_is_pv_encryption_in_transit_enabled" {
  description = "Map of is_pv_encryption_in_transit_enabled values across all core_instances, keyed the same as var.core_instances except keys with no is_pv_encryption_in_transit_enabled are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.is_pv_encryption_in_transit_enabled if v.is_pv_encryption_in_transit_enabled != null }
}
output "core_instances_launch_mode" {
  description = "Map of launch_mode values across all core_instances, keyed the same as var.core_instances except keys with no launch_mode are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.launch_mode if v.launch_mode != null && length(v.launch_mode) > 0 }
}
output "core_instances_launch_options" {
  description = "Map of launch_options values across all core_instances, keyed the same as var.core_instances except keys with no launch_options are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.launch_options) if v.launch_options != null && length(v.launch_options) > 0 }
}
output "core_instances_launch_volume_attachments" {
  description = "Map of launch_volume_attachments values across all core_instances, keyed the same as var.core_instances except keys with no launch_volume_attachments are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.launch_volume_attachments if v.launch_volume_attachments != null && length(v.launch_volume_attachments) > 0 }
}
output "core_instances_licensing_configs" {
  description = "Map of licensing_configs values across all core_instances, keyed the same as var.core_instances except keys with no licensing_configs are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.licensing_configs) if v.licensing_configs != null && length(v.licensing_configs) > 0 }
}
output "core_instances_metadata" {
  description = "Map of metadata values across all core_instances, keyed the same as var.core_instances except keys with no metadata are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "core_instances_placement_constraint_details" {
  description = "Map of placement_constraint_details values across all core_instances, keyed the same as var.core_instances except keys with no placement_constraint_details are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.placement_constraint_details) if v.placement_constraint_details != null && length(v.placement_constraint_details) > 0 }
}
output "core_instances_platform_config" {
  description = "Map of platform_config values across all core_instances, keyed the same as var.core_instances except keys with no platform_config are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.platform_config) if v.platform_config != null && length(v.platform_config) > 0 }
}
output "core_instances_preemptible_instance_config" {
  description = "Map of preemptible_instance_config values across all core_instances, keyed the same as var.core_instances except keys with no preemptible_instance_config are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.preemptible_instance_config) if v.preemptible_instance_config != null && length(v.preemptible_instance_config) > 0 }
}
output "core_instances_preserve_boot_volume" {
  description = "Map of preserve_boot_volume values across all core_instances, keyed the same as var.core_instances except keys with no preserve_boot_volume are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.preserve_boot_volume if v.preserve_boot_volume != null }
}
output "core_instances_preserve_data_volumes_created_at_launch" {
  description = "Map of preserve_data_volumes_created_at_launch values across all core_instances, keyed the same as var.core_instances except keys with no preserve_data_volumes_created_at_launch are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.preserve_data_volumes_created_at_launch if v.preserve_data_volumes_created_at_launch != null }
}
output "core_instances_private_ip" {
  description = "Map of private_ip values across all core_instances, keyed the same as var.core_instances except keys with no private_ip are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.private_ip if v.private_ip != null && length(v.private_ip) > 0 }
}
output "core_instances_public_ip" {
  description = "Map of public_ip values across all core_instances, keyed the same as var.core_instances except keys with no public_ip are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.public_ip if v.public_ip != null && length(v.public_ip) > 0 }
}
output "core_instances_region" {
  description = "Map of region values across all core_instances, keyed the same as var.core_instances except keys with no region are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "core_instances_security_attributes" {
  description = "Map of security_attributes values across all core_instances, keyed the same as var.core_instances except keys with no security_attributes are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "core_instances_security_attributes_state" {
  description = "Map of security_attributes_state values across all core_instances, keyed the same as var.core_instances except keys with no security_attributes_state are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.security_attributes_state if v.security_attributes_state != null && length(v.security_attributes_state) > 0 }
}
output "core_instances_shape" {
  description = "Map of shape values across all core_instances, keyed the same as var.core_instances except keys with no shape are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "core_instances_shape_config" {
  description = "Map of shape_config values across all core_instances, keyed the same as var.core_instances except keys with no shape_config are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.shape_config) if v.shape_config != null && length(v.shape_config) > 0 }
}
output "core_instances_source_details" {
  description = "Map of source_details values across all core_instances, keyed the same as var.core_instances except keys with no source_details are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => one(v.source_details) if v.source_details != null && length(v.source_details) > 0 }
}
output "core_instances_state" {
  description = "Map of state values across all core_instances, keyed the same as var.core_instances except keys with no state are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_instances_subnet_id" {
  description = "Map of subnet_id values across all core_instances, keyed the same as var.core_instances except keys with no subnet_id are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "core_instances_system_tags" {
  description = "Map of system_tags values across all core_instances, keyed the same as var.core_instances except keys with no system_tags are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "core_instances_time_created" {
  description = "Map of time_created values across all core_instances, keyed the same as var.core_instances except keys with no time_created are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_instances_time_maintenance_reboot_due" {
  description = "Map of time_maintenance_reboot_due values across all core_instances, keyed the same as var.core_instances except keys with no time_maintenance_reboot_due are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.time_maintenance_reboot_due if v.time_maintenance_reboot_due != null && length(v.time_maintenance_reboot_due) > 0 }
}
output "core_instances_update_operation_constraint" {
  description = "Map of update_operation_constraint values across all core_instances, keyed the same as var.core_instances except keys with no update_operation_constraint are omitted"
  value       = { for k, v in oci_core_instance.core_instances : k => v.update_operation_constraint if v.update_operation_constraint != null && length(v.update_operation_constraint) > 0 }
}

