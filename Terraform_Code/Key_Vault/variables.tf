variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "name" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "sku_name" {
  type        = string
}

variable "tenant_id" {
  type        = string
}

variable "bypass" {
  type        = string
}

variable "allowed_ip_rules" {
  type        = list(string)
}