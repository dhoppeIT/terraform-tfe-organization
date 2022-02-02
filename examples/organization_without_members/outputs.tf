output "organization_name" {
  value       = module.tfe_organization.name
  description = "The name of the organization"
}

output "organization_token_id" {
  value       = module.tfe_organization.id
  description = "The generated token"
}

output "organization_token_token" {
  value       = module.tfe_organization.token
  description = "The generated token"
  sensitive   = true
}
