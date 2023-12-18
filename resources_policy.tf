resource "tfe_policy" "allowed-providers" {
  for_each = local.files
  name     = element(split(".", element(split("/", each.key), length(each.key) - 1)), 2)
  # description  = "This policy uses the tfconfig/v2 import to restrict providers to those in an allowed list."
  organization = data.tfe_organization.this.name
  kind         = "sentinel"
  policy       = file(each.key)
  enforce_mode = "advisory" # advisory, hard-mandatory and soft-mandatory
}