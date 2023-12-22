resource "azurerm_resource_group" "myrgWithMeta" {
  for_each = {
    rg1 = "South India"
    rg2 = "West India"
  }
  name     = each.key
  location = each.value
}
