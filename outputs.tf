output "site_recovery_protection_container_mappings_id" {
  description = "Map of id values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_recovery_protection_container_mappings_automatic_update" {
  description = "Map of automatic_update values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.automatic_update if v.automatic_update != null && length(v.automatic_update) > 0 }
}
output "site_recovery_protection_container_mappings_name" {
  description = "Map of name values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "site_recovery_protection_container_mappings_recovery_fabric_name" {
  description = "Map of recovery_fabric_name values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.recovery_fabric_name if v.recovery_fabric_name != null && length(v.recovery_fabric_name) > 0 }
}
output "site_recovery_protection_container_mappings_recovery_replication_policy_id" {
  description = "Map of recovery_replication_policy_id values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.recovery_replication_policy_id if v.recovery_replication_policy_id != null && length(v.recovery_replication_policy_id) > 0 }
}
output "site_recovery_protection_container_mappings_recovery_source_protection_container_name" {
  description = "Map of recovery_source_protection_container_name values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.recovery_source_protection_container_name if v.recovery_source_protection_container_name != null && length(v.recovery_source_protection_container_name) > 0 }
}
output "site_recovery_protection_container_mappings_recovery_target_protection_container_id" {
  description = "Map of recovery_target_protection_container_id values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.recovery_target_protection_container_id if v.recovery_target_protection_container_id != null && length(v.recovery_target_protection_container_id) > 0 }
}
output "site_recovery_protection_container_mappings_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.recovery_vault_name if v.recovery_vault_name != null && length(v.recovery_vault_name) > 0 }
}
output "site_recovery_protection_container_mappings_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_protection_container_mappings, keyed the same as var.site_recovery_protection_container_mappings"
  value       = { for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

