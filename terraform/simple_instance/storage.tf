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
    git_commit           = "94df685c2e52977ad6bb8d1fcf5594a57b7a9d14"
    git_file             = "terraform/simple_instance/storage.tf"
    git_last_modified_at = "2022-03-17 16:41:51"
    git_last_modified_by = "64798590+stinkeyes@users.noreply.github.com"
    git_modifiers        = "64798590+stinkeyes"
    git_org              = "stinkeyes"
    git_repo             = "terragoat"
    yor_trace            = "ce2a6d7c-1557-4032-92ab-aaaea5b2d06b"
  }
}

resource "azurerm_storage_account" "storagebay" {
  name                     = "storagebay${random_string.sa_name_affix.result}"
  resource_group_name      = azurerm_resource_group.trekgroup.name
  location                 = azurerm_resource_group.trekgroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    git_commit           = "94df685c2e52977ad6bb8d1fcf5594a57b7a9d14"
    git_file             = "terraform/simple_instance/storage.tf"
    git_last_modified_at = "2022-03-17 16:41:51"
    git_last_modified_by = "64798590+stinkeyes@users.noreply.github.com"
    git_modifiers        = "64798590+stinkeyes"
    git_org              = "stinkeyes"
    git_repo             = "terragoat"
    yor_trace            = "3c4dca6b-8707-4295-acfc-1cb7db2ad43c"
  }
}
