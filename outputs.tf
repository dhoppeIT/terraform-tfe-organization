output "name" {
  value       = tfe_organization.default.id
  description = "The name of the organization"
}

output "id" {
  value       = [for membership in tfe_organization_membership.default : membership.id]
  description = "The organization membership ID"
}

output "user_id" {
  value       = [for membership in tfe_organization_membership.default : membership.user_id]
  description = "The ID of the users associated with the organization membership"
}

# TODO: Resolve naming conflicts
# output "id" {
#   value       = tfe_organization_token.default.id
#   description = "The ID of the token"
# }

output "token" {
  value       = tfe_organization_token.default.token
  description = "The generated token"
  sensitive   = true
}
