
resource "azurerm_container_registry" "pass" {
  name                   = "containerRegistry1"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  sku                    = "Premium"
  anonymous_pull_enabled = false
  trust_policy {
    enabled= true
  }
}

resource "azurerm_container_registry" "fail" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
}


resource "azurerm_container_registry" "fail2" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  trust_policy {
    enabled= false
  }
}
