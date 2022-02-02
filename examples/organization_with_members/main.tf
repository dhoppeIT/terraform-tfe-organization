module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.1"

  name  = local.organization_name
  email = local.organization_email

  members = local.organization_members
}
