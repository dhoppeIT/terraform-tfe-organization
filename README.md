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
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-organization/blob/main/LICENSE) for full details.
