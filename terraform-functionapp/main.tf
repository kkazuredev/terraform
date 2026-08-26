provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "rg" {
    name                                = var.resource_group_name
    location                            = var.location 
}

resource "azurerm_storage_account" "sa" {
    name                                = var.storage_account_name
    resource_group_name                 = azurerm_resource_group.rg.name 
    location                            = azurerm_resource_group.rg.location 
    account_tier                        = "standard"
    account_replication_type            = "LRS"
}


resource "azurerm_app_service_plan" "plan" {
    name                                = var.app_service_plan_name 
    location                            = azurerm_resource_group.rg.location
    resource_group_name                 = azurerm_resource_group.rg.name 
    kind                                = "FunctionApp"
    reserved                            = true 

    sku {
        tier = "Dynamic"
        size = "Y1"
    }
}

resource "azurerm_linux_function_app" "function" {
    name                                = var.function_app_name 
    location                            = azurerm_resource_group.rg.location
    storage_account_name                = azurerm_storage_account.sa.name 
    resource_group_name                 = azurerm_resource_group.rg.name 
    storage_account_access_key          = azurerm_storage_account.sa.primary_access_key
    service_plan_id                     = azurerm_app_service_plan.plan.id 

    site_config {
        application_stack {
            python_version = "3.10"
        }
    }

    https_only = true 

    depends_on = [
        azurerm_storage_account.sa 
    ]
}
