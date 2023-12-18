mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-fail-without-provider-blocks.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}