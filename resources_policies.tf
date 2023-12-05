resource "tfe_policy" "AllowedProviders" {
  name         = "allowed-providers"
  description  = "This policy is use to to restrict providers."
  organization = data.tfe_organization.this.name
  kind         = "sentinel"
  policy       = "main = rule { true }"
  enforce_mode = "advisory"
}