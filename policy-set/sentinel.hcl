module "tfconfig-functions" {
    source = "./functions/tfconfig-functions.sentinel"
}

policy "allowed-providers" {
    source = "./policies/global/allowed-providers.sentinel"
    enforcement_level = "advisory"
}