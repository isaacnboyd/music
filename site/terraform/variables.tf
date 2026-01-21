variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "music-site-rg"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "centralus"
}

variable "app_name" {
  description = "Name of the Static Web App (must be globally unique)"
  type        = string
  default     = "music-site-app"
}

variable "domain_name" {
  description = "Custom domain name for the static web app"
  type        = string
  default     = "music.isaacnboyd.com"
}
