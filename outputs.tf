output "name" {
  value       = tfe_organization.default.id
  description = "The name of the organization"
}

output "id" {
  value       = [for membership in tfe_organization_membership.default : membership.id]
  description = "The organization membership ID"
}

output "token" {
  value       = tfe_organization_token.default.token
  description = "The generated token"
  sensitive   = true
}
