variable "admin_enabled" {
  type        = bool
}

variable "anonymous_pull_enabled" {
  type        = bool
}

variable "data_endpoint_enabled" {
  type        = bool
}

variable "export_policy_enabled" {
  type        = bool
}

variable "location" {
  type        = string
}

variable "name" {
  type        = string
}

variable "network_rule_bypass_option" {
  type        = string
}

variable "public_network_access_enabled" {
  type        = bool
}

variable "quarantine_policy_enabled" {
  type        = bool
}

variable "resource_group_name" {
  type        = string
}

variable "retention_policy_in_days" {
  type        = number
}

variable "sku" {
  type        = string
}

variable "Business_Unit" {
  type        = string
}

variable "Owner" {
  type        = string
}

variable "Create_date" {
  type        = string
}

variable "Delivery_Manager" {
  type        = string
}

variable "Project_Name" {
  type        = string
}

variable "trust_policy_enabled" {
  type        = bool
}

variable "zone_redundancy_enabled" {
  type        = bool
}