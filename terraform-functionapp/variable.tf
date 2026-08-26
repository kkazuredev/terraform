variable "resource_group_name" {
    default = "rg-function-terraform"
}

variable "location" {
    default = "canada Central"
}

variable "storage_account_name" {
    default = "strfunctionapp"
}

variable "app_service_plan_name" {
    default = "function-plan-demo"
}

variable "function_app_name" {
    default = "terraform-function-demo"
}
