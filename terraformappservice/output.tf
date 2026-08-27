output "app_service_name" {
  value = azurerm_app_service.appservice.name
}
output "app_service_default_hostname" {
  value = azurerm_app_service.appservice.default_hostname
}       
output "app_service_identity_principal_id" {
  value = azurerm_app_service.appservice.identity[0].principal_id
}
output "app_service_url" {
  value = azurerm_app_service.appservice.default_hostname
}