locals {
  # This local is used to define the organization name.
  organization_name = "ConseilsTI"

  # This local is used to define the folder where all the policies are located.
  # The folder structure should be like this:
  # policies
  # |_ global
  #    <policy name>.sentinel
  #   |_ test
  #     |_ <policy_name>
  #        <test name>.hcl
  #        <mock name>.sentinel
  policies_folder = "policies"
}