output "name" {
  value       = tfe_organization.default.id
  description = "The name of the organization"
}

output "token" {
  value       = tfe_organization_token.default.token
  description = "The generated token"
  sensitive   = true
}
