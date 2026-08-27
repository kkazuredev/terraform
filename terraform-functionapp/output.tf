output "functionapp_name" {
  value = azurerm_function_app.functionapp.name
}
output "functionapp_default_hostname" {
  value = azurerm_function_app.functionapp.default_hostname
}
output "functionapp_identity_principal_id" {
  value = azurerm_function_app.functionapp.identity[0].principal_id
}
output "function_app_url" {
  value = azurerm_function_app.functionapp.default_hostname
}
