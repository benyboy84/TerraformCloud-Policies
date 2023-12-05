resource "tfe_policy_set" "this" {
  name          = "Global"
  description   = "This policy-set is assigned at the organization level."
  organization  = data.tfe_organization.this.name
  global        = true
  kind          = "sentinel"
  policies_path = "policies-sets/global"

  vcs_repo {
    identifier         = "benyboy84/TerraformCloud-Policies"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.this.oauth_token_id
  }
}