locals {
  files = fileset("policies", "{aws,azure,global}/*.sentinel")
}

output "sentinel" {
  value = local.files
}