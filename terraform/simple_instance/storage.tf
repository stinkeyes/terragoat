provider "random" {
}

resource "random_string" "sa_name_affix" {
  length  = 8
  special = false
  upper   = false
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "trekgroup" {
  name     = "trekgroup-resources"
  location = "West US"
  tags = {
    git_commit           = "d143b540a13895d9088ae7140cee835b4ea23ce3"
    git_file             = "terraform/simple_instance/storage.tf"
    git_last_modified_at = "2022-03-15 14:20:25"
    git_last_modified_by = "64798590+stinkeyes@users.noreply.github.com"
    git_modifiers        = "64798590+stinkeyes"
    git_org              = "stinkeyes"
    git_repo             = "terragoat"
    yor_trace            = "f4c89519-1219-4934-8f90-a34d9fd8a475"
  }
}

resource "azurerm_storage_account" "storagebay" {
  name                     = "storagebay${random_string.sa_name_affix.result}"
  resource_group_name      = azurerm_resource_group.trekgroup.name
  location                 = azurerm_resource_group.trekgroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    git_commit           = "d143b540a13895d9088ae7140cee835b4ea23ce3"
    git_file             = "terraform/simple_instance/storage.tf"
    git_last_modified_at = "2022-03-15 14:20:25"
    git_last_modified_by = "64798590+stinkeyes@users.noreply.github.com"
    git_modifiers        = "64798590+stinkeyes"
    git_org              = "stinkeyes"
    git_repo             = "terragoat"
    yor_trace            = "ea5460dc-f071-4c9a-98b9-de4ff3af94ba"
  }
}
