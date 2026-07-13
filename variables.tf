variable "site_recovery_protection_container_mappings" {
  description = <<EOT
Map of site_recovery_protection_container_mappings, attributes below
Required:
    - name
    - recovery_fabric_name
    - recovery_replication_policy_id
    - recovery_source_protection_container_name
    - recovery_target_protection_container_id
    - recovery_vault_name
    - resource_group_name
Optional:
    - automatic_update (block):
        - authentication_type (optional)
        - automation_account_id (optional)
        - enabled (optional)
EOT

  type = map(object({
    name                                      = string
    recovery_fabric_name                      = string
    recovery_replication_policy_id            = string
    recovery_source_protection_container_name = string
    recovery_target_protection_container_id   = string
    recovery_vault_name                       = string
    resource_group_name                       = string
    automatic_update = optional(object({
      authentication_type   = optional(string)
      automation_account_id = optional(string)
      enabled               = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_container_mappings : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_container_mappings : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_container_mappings : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_container_mappings : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_container_mappings : (
        length(v.recovery_fabric_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_container_mappings : (
        length(v.recovery_source_protection_container_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

