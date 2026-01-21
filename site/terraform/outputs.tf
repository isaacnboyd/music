output "static_web_app_url" {
  description = "URL of the deployed static web app"
  value       = "https://${azurerm_static_web_app.app.default_host_name}"
}

output "static_web_app_name" {
  description = "Name of the static web app"
  value       = azurerm_static_web_app.app.name
}

output "deployment_token" {
  description = "Deployment token for GitHub Actions (save this for CI/CD setup)"
  value       = azurerm_static_web_app.app.api_key
  sensitive   = true
}

output "validation_token" {
  description = "CNAME validation token - add this as a TXT record"
  value       = azurerm_static_web_app_custom_domain.domain.validation_token
  sensitive   = true
}
