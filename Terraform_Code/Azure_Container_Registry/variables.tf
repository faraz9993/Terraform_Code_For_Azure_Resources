variable "admin_enabled" {
  type        = bool
  default     = true
}

variable "anonymous_pull_enabled" {
  type        = bool
  default     = false
}

variable "data_endpoint_enabled" {
  type        = bool
  default     = false
}

variable "export_policy_enabled" {
  type        = bool
  default     = true
}

variable "location" {
  type        = string
  default     = "southeastasia"
}

variable "name" {
  type        = string
  default     = "farajnazish ansari"
}

variable "network_rule_bypass_option" {
  type        = string
  default     = "AzureServices"
}

variable "public_network_access_enabled" {
  type        = bool
  default     = true
}

variable "quarantine_policy_enabled" {
  type        = bool
  default     = false
}

variable "resource_group_name" {
  type        = string
}

variable "retention_policy_in_days" {
  type        = number
  default     = 0
}

variable "sku" {
  type        = string
  default     = "Standard"
}

variable "Business_Unit" {
  type        = string
  default     = "Einfochips"
}

variable "Owner" {
  type        = string
  default     = "Farajnazish Ansari"
}

variable "Create_date" {
  type        = string
  default     = "28/2/2024"
}

variable "Delivery_Manager" {
  type        = string
  default     = "Farajnazish Ansari"
}

variable "Project_Name" {
  type        = string
  default     = "Learning Purpose"
}

variable "trust_policy_enabled" {
  type        = bool
  default     = false
}

variable "zone_redundancy_enabled" {
  type        = bool
  default     = false
}