resource "tfe_organization" "default" {
  name                                                    = var.name
  email                                                   = var.email
  session_timeout_minutes                                 = var.session_timeout_minutes
  session_remember_minutes                                = var.session_remember_minutes
  collaborator_auth_policy                                = var.collaborator_auth_policy
  owners_team_saml_role_id                                = var.owners_team_saml_role_id
  cost_estimation_enabled                                 = var.cost_estimation_enabled
  send_passing_statuses_for_untriggered_speculative_plans = var.send_passing_statuses_for_untriggered_speculative_plans
}

resource "tfe_organization_membership" "default" {
  for_each = toset(var.members)

  organization = tfe_organization.default.name
  email        = each.value
}

resource "tfe_organization_token" "default" {
  organization     = tfe_organization.default.name
  force_regenerate = var.force_regenerate
}
