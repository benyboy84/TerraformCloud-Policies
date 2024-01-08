locals {
  # This local is used to get a list of all folder inside the policies folder.
  files = fileset(local.policies_folder, "*/*.sentinel")
}