variable "resource_group_name" {
    default = "rg-function-terraform"
}

variable "location" {
    default = "east us"
}

variable "storage_account_access_name" {
    default = "strappservice"
}

variable "app_service_plan_name" {
    default = "appservice-plan-demo"
}

variable "app_service_name" {
    default = "terraform-appservice-demo"
}

variable "sku_name" {
    default = "B1"
}