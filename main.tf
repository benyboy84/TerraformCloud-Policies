locals {
  files = fileset("policies", "**")
}

output "sentinel" {
  value = local.files
}