provider "azurerm" {
  features {}
  subscription_id = "b5661abd-61e4-496b-bce5-4f1f2ff7f878"
  client_id       = "cd76c8af-1d83-483d-a2cd-b6fdcd337914"
  client_secret   = "1cU8Q~oTGGFkn3kC_f3SvQspkKEbg44SKMFzZap9"
  tenant_id       = "870011b7-8a7a-474a-b5ee-e95e62bb757d"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West US"
}
