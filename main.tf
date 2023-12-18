locals {
  files = fileset("policies", "*/*.sentinel")
}

output "sentinel" {
  value = { for v in local.files : v => split("/", v) }
}

output "element" {
  value = { for v in local.files : v => element(split(".", element(split("/", v), 1)), 2) }
}