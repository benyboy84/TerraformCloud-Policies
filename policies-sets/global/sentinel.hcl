module "tfplan-functions" {
    source = "../functions/plan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../functions/state-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../functions/config-functions.sentinel"
}

module "tfrun-functions" {
    source = "../../functions/run-functions.sentinel"
}

policy "allowed-providers" {
    source = "../../policies/global/allowed-providers.sentinel"
    enforcement_level = "advisory"
}