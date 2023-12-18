locals {
  files = fileset("./policies", "**.sentinel")
}

output "sentinel" {
  value = local.files
}