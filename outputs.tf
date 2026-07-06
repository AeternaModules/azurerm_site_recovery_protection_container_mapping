output "site_recovery_protection_container_mappings" {
  description = "All site_recovery_protection_container_mapping resources"
  value       = azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings
}
output "site_recovery_protection_container_mappings_automatic_update" {
  description = "List of automatic_update values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.automatic_update]
}
output "site_recovery_protection_container_mappings_name" {
  description = "List of name values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.name]
}
output "site_recovery_protection_container_mappings_recovery_fabric_name" {
  description = "List of recovery_fabric_name values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.recovery_fabric_name]
}
output "site_recovery_protection_container_mappings_recovery_replication_policy_id" {
  description = "List of recovery_replication_policy_id values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.recovery_replication_policy_id]
}
output "site_recovery_protection_container_mappings_recovery_source_protection_container_name" {
  description = "List of recovery_source_protection_container_name values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.recovery_source_protection_container_name]
}
output "site_recovery_protection_container_mappings_recovery_target_protection_container_id" {
  description = "List of recovery_target_protection_container_id values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.recovery_target_protection_container_id]
}
output "site_recovery_protection_container_mappings_recovery_vault_name" {
  description = "List of recovery_vault_name values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.recovery_vault_name]
}
output "site_recovery_protection_container_mappings_resource_group_name" {
  description = "List of resource_group_name values across all site_recovery_protection_container_mappings"
  value       = [for k, v in azurerm_site_recovery_protection_container_mapping.site_recovery_protection_container_mappings : v.resource_group_name]
}

