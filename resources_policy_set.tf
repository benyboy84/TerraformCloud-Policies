resource "tfe_policy_set" "global" {
  name          = "Global-Policy-Set"
  description   = "This policy-set is assigned at the organization level."
  global        = true
  organization  = data.tfe_organization.this.name
  policies_path = "policy-sets/global"

  vcs_repo {
    identifier         = "benyboy84/TerraformCloud-Policies"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.client.id
  }
}