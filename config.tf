provider "azurerm" {

}

# Create a resource group
resource "azurerm_resource_group" "module-testing" {
  name     = "module-testing"
  location = "West US"
}

module "manageddisk" {
    source = "Azure/manageddisk/azurerm"

    disk_size_gb = "0"
    image_reference_id = ""
    import_or_copy_os_type = "Linux"
    managed_disk_name = "test-manageddisk"
    resource_group_name =  "module-testing"
    source_resource_id = ""
    source_uri = ""
    storage_account_type = "Standard_LRS"
    tags = {}
}
