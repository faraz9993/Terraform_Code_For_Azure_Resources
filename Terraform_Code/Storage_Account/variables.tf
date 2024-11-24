variable "account_kind" {
  type        = string
  default     = "Storage"
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
}

variable "dns_endpoint_type" {
  type        = string
  default     = "Standard"
}

variable "location" {
  type        = string
  default     = "southeastasia"
}

variable "min_tls_version" {
  type        = string
  default     = "TLS1_2"
}

variable "name" {
  type        = string
  default     = "sa18swapdstorageaccount"
}


variable "queue_encryption_key_type" {
  type        = string
  default     = "Service"
}

variable "resource_group_name" {
  type        = string
  default     = "sa1_dev_eic_ip_implementation"
}

variable "table_encryption_key_type" {
  type        = string
  default     = "Service"
}


variable "allow_nested_items_to_be_public" {
  type        = bool
  default     = false
}

variable "cross_tenant_replication_enabled" {
  type        = bool
  default     = false
}

variable "default_to_oauth_authentication" {
  type        = bool
  default     = true
}

variable "https_traffic_only_enabled" {
  type        = bool
  default     = true
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  default     = false
}

variable "is_hns_enabled" {
  type        = bool
  default     = false
}

variable "large_file_share_enabled" {
  type        = bool
  default     = false
}

variable "local_user_enabled" {
  type        = bool
  default     = true
}

variable "nfsv3_enabled" {
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  type        = bool
  default     = true
}

variable "sftp_enabled" {
  type        = bool
  default     = false
}

variable "shared_access_key_enabled" {
  type        = bool
  default     = true
}
################
#blob_properties
################

variable "change_feed_enabled" {
  type        = bool
  default     = false
}

variable "last_access_time_enabled" {
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  type        = bool
  default     = false
}
#################
#queue_properties
#################

variable "enabled" {
  type        = bool
  default     = true
}

variable "include_apis" {
  type        = bool
  default     = false
}
##########
#logging
#########

variable "delete" {
  type        = bool
  default     = false
}

variable "read" {
  type        = bool
  default     = false
}

variable "write" {
  type        = bool
  default     = false
}
