variable "location" {
  type        = string
}

variable "name" {
  type        = string
}

variable "subscription_id" {
  type        = string
}

variable "network_interface_ids" {
  type        = string
}

######
#tags#
######
variable "Business_Unit" {
  type        = string
}

variable "Create_Date" {
  type        = string
}

variable "Project_name" {
  type        = string
}

variable "Resource_Owner" {
  type        = string
}

variable "Sub_Business_Unit" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "vm_size" {
  type        = string
}

##################
#boot_diagnostics#
##################

variable "enabled" {
  type        = bool
}

##########
#identity#
##########

variable "identity_type" {
  type        = string
}

############
#os_profile#
############

variable "vm_hostname" {
  type        = string
}

variable "admin_username" {
  type        = string
}

variable "admin_password" {
  type        = string
}

#########################
#os_profile_linux_config#
#########################

variable "disable_password_authentication" {
  type        = bool
}

variable "key_data" {
  type        = string
}

variable "path" {
  type        = string
}

#########################
#storage_image_reference#
#########################

variable "offer" {
  type        = string
}

variable "publisher" {
  type        = string
}

variable "sku" {
  type        = string
}

variable "image_version" {
  type        = string
}


#################
#storage_os_disk#
#################

variable "caching" {
  type        = string
}

variable "create_option" {
  type        = string
}

variable "disk_size_gb" {
  type        = number
}

variable "managed_disk_type" {
  type        = string
}

variable "os_type" {
  type        = string
}

variable "write_accelerator_enabled" {
  type        = bool
}

variable "storage_os_disk_name" {
  type        = string
}