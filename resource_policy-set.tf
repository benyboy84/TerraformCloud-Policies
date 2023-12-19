resource "tfe_policy_set" "test" {
  name   = "Global-Policy-Set"
  description  = "This policy-set is assigned at the organization level."
  organization = data.tfe_organization.this.name
  global       = true
  kind         = "sentinel"
  policy_ids   = [for value in tfe_policy.this : value.id]
}