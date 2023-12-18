resource "tfe_policy" "this" {
  for_each = local.files
  name     = element(split(".", element(split("/", each.key), 1)), 2)
  # description  = ""
  organization = data.tfe_organization.this.name
  kind         = "sentinel"
  policy       = file("${local.policies_folders}/${each.key}")
  enforce_mode = "advisory" # advisory, hard-mandatory and soft-mandatory
}