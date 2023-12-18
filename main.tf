locals {
  files = fileset("policies", "*/*.sentinel")
}

output "sentinel" {
  value = {for v in local.files : v => split("/", v)}
}