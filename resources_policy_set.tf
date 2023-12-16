data "tfe_slug" "global" {
  // point to the local directory where the policies are located.
  source_path = "my-policy-set"
}

resource "tfe_policy_set" "global" {
  name         = "Global-Policy-Set"
  description  = "This policy-set is assigned at the organization level."
  global       = true
  organization = data.tfe_organization.this.name
  // reference the tfe_slug data source.
  slug = data.tfe_slug.global
}