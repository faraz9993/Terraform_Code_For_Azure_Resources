variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
}

variable "name" {
  type        = string
  default     = "KeyVault"
}

variable "resource_group_name" {
  type        = string
  default     = "sa1_dev_eic_ip_implementation"
}

variable "location" {
  type        = string
  default     = "southeastasia"
}

variable "sku_name" {
  type        = string
  default     = "standard"
}

variable "tenant_id" {
  type        = string
  default     = "0adb040b-ca22-4ca6-9447-ab7b049a22ff"
}

variable "bypass" {
  type        = string
  default     = "AzureServices"
}


variable "allowed_ip_rules" {
  type        = list(string)
  default     = [
    "103.247.7.171",
    "103.250.137.71",
    "106.214.9.211",
    "115.112.142.35",
    "122.168.249.196",
    "13.76.60.35",
    "14.143.247.190",
    "14.97.73.250",
    "14.97.73.251",
    "157.34.3.115",
    "157.34.47.115",
    "157.34.9.189",
    "182.70.183.124",
    "182.76.141.106",
    "20.195.85.180",
    "20.205.69.28",
    "20.247.145.208",
    "4.145.176.114",
    "4.193.39.248",
    "49.249.110.122",
    "49.35.253.179",
  ]
}