variable "openid_client_client_policies" {
  description = <<EOT
Map of openid_client_client_policies, attributes below
Required:
    - clients
    - name
    - realm_id
    - resource_server_id
Optional:
    - decision_strategy
    - description
    - logic
EOT

  type = map(object({
    clients            = set(string)
    name               = string
    realm_id           = string
    resource_server_id = string
    decision_strategy  = optional(string)
    description        = optional(string)
    logic              = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

