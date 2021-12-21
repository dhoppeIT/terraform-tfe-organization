# terraform-tfe-organization

Terraform module to manage the Terraform Cloud/Enterprise organization resources
(tfe_organization, tfe_organization_membership, tfe_organization_token).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-tfe-organization/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe-organization" {
  source = "dhoppeIT/organization/tfe"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.26.1, < 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | >= 0.26.1, < 1.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [tfe_organization_membership.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization_membership) | resource |
| [tfe_organization_token.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_collaborator_auth_policy"></a> [collaborator\_auth\_policy](#input\_collaborator\_auth\_policy) | Authentication policy | `string` | `null` | no |
| <a name="input_cost_estimation_enabled"></a> [cost\_estimation\_enabled](#input\_cost\_estimation\_enabled) | Whether or not the cost estimation feature is enabled for all workspaces in the organization | `string` | `null` | no |
| <a name="input_email"></a> [email](#input\_email) | Admin email address | `string` | n/a | yes |
| <a name="input_force_regenerate"></a> [force\_regenerate](#input\_force\_regenerate) | If set to true, a new token will be generated even if a token already exists | `bool` | `false` | no |
| <a name="input_members"></a> [members](#input\_members) | Email of the users to add | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the organization | `string` | n/a | yes |
| <a name="input_owners_team_saml_role_id"></a> [owners\_team\_saml\_role\_id](#input\_owners\_team\_saml\_role\_id) | The name of the 'owners' team | `string` | `null` | no |
| <a name="input_session_remember_minutes"></a> [session\_remember\_minutes](#input\_session\_remember\_minutes) | Session expiration | `number` | `null` | no |
| <a name="input_session_timeout_minutes"></a> [session\_timeout\_minutes](#input\_session\_timeout\_minutes) | Session timeout after inactivity | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The organization membership ID |
| <a name="output_name"></a> [name](#output\_name) | The name of the organization |
| <a name="output_token"></a> [token](#output\_token) | The generated token |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-organization/blob/main/LICENSE) for full details.
