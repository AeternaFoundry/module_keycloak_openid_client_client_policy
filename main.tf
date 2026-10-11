resource "keycloak_openid_client_client_policy" "openid_client_client_policies" {
  for_each = var.openid_client_client_policies

  clients            = each.value.clients
  name               = each.value.name
  realm_id           = each.value.realm_id
  resource_server_id = each.value.resource_server_id
  decision_strategy  = each.value.decision_strategy
  description        = each.value.description
  logic              = each.value.logic
}

