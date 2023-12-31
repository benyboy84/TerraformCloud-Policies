resource "tfe_policy" "allowed-providers" {
  name         = "allowed-providers"
  description  = "This policy uses the tfconfig/v2 import to restrict providers to those in an allowed list."
  organization = data.tfe_organization.this.name
  kind         = "sentinel"
  policy       = file("policies/global/allowed-providers.sentinel")
  enforce_mode = "advisory" # advisory, hard-mandatory and soft-mandatory
}