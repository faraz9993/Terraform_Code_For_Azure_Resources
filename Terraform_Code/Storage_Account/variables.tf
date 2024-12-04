variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "name" {
  type        = string
}

variable "resource_provider_registrations" {
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

variable "bypass" {
  type        = string
}

variable "account_kind" {
  type        = string
}

variable "account_replication_type" {
  type        = string
}

variable "account_tier" {
  type        = string
}
