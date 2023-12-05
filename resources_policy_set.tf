data "tfe_slug" "this" {
  // point to the local directory where the policies are located.
  source_path = "policies-sets/global"
}

resource "tfe_policy_set" "this" {
  name         = "Global"
  description  = "This policy-set is assigned at the organization level."
  organization = data.tfe_organization.this.name
  global       = true
  slug         = data.tfe_slug.this
}