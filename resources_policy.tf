resource "tfe_policy" "this" {
  for_each = local.files
  name     = element(split(".", element(split("/", each.key), length(each.key) - 1)), 2)
  # description  = ""
  organization = data.tfe_organization.this.name
  kind         = "sentinel"
  policy       = file("policies/${each.key}")
  enforce_mode = "advisory" # advisory, hard-mandatory and soft-mandatory
}