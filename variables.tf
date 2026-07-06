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
      authentication_type   = optional(string) # Default: "SystemAssignedIdentity"
      automation_account_id = optional(string)
      enabled               = optional(bool) # Default: false
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
  # --- Unconfirmed validation candidates, derived from azurerm_site_recovery_protection_container_mapping's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: recovery_vault_name
  #   source:    validate.RecoveryServicesVaultName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: recovery_replication_policy_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: recovery_replication_policy_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: recovery_target_protection_container_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: recovery_target_protection_container_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: automatic_update.automation_account_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: automatic_update.automation_account_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: automatic_update.authentication_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

