output "organization_name" {
  value       = module.tfe_organization.name
  description = "The name of the organization"
}

output "organization_membership_id" {
  value       = module.tfe_organization.id
  description = "The organization membership ID"
}

output "organization_membership_user_id" {
  value       = try(module.tfe_organization.user_id, null)
  description = "The ID of the users associated with the organization membership"
}

output "organization_token_id" {
  value       = module.tfe_organization.id
  description = "The generated token"
  sensitive   = true
}

output "organization_token_token" {
  value       = module.tfe_organization.token
  description = "The generated token"
  sensitive   = true
}
