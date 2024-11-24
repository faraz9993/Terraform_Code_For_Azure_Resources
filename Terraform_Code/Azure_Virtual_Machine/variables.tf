variable "location" {
  type        = string
  default     = "southeastasia"
}

variable "name" {
  type        = string
  default     = "Virtual Machine"
}

variable "subscription_id" {
  type        = string
  default     = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
}

variable "network_interface_ids" {
  type        = string
  default     = "/subscriptions/664b6097-19f2-42a3-be95-a4a6b4069f6b/resourceGroups/sa1_test_eic_FarajAnsari/providers/Microsoft.Network/networkInterfaces/faraz-test743_z1"
}

######
#tags#
######
variable "Business_Unit" {
  type        = string
  default     = "Einfochips"
}

variable "Create_Date" {
  type        = string
  default     = "18/10/2024"
}

variable "Project_name" {
  type        = string
  default     = "Evwer"
}

variable "Resource_Owner" {
  type        = string
  default     = "Bhavin Shah"
}

variable "Sub_Business_Unit" {
  type        = string
  default     = "PES-Digital"
}



variable "resource_group_name" {
  type        = string
  default     = "sa1_dev_eic_ip_implementation"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2ms"
}

##################
#boot_diagnostics#
##################

variable "enabled" {
  type        = bool
  default     = true
}

##########
#identity#
##########

variable "identity_type" {
  type        = string
  default     = "SystemAssigned"
}

############
#os_profile#
############

variable "vm_hostname" {
  type        = string
  default     = "sa1vmswapd"
}

variable "admin_username" {
  type        = string
  default     = "evwereic"
}

variable "admin_password" {
  type        = string
  default     = "Admin@123"
}

#########################
#os_profile_linux_config#
#########################

variable "disable_password_authentication" {
  type        = bool
  default     = true
}

variable "key_data" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDZUjeQnOees4DdEtg5003aS2C9WPQHTyyZDGORYqw1T/nFeriW7lTygARaZ121YOyzGIynPNitjvKe+PH5TdGtug4I92x7shYv1bT00S6F083pUj094ZyAlcS8J0xe37sdEvIAfc6qXVcD4MWxusFHRBviraP1bdGuxeTZNdZH5Y20iZgC9Sipf/s74vm6ySdsSKgekE9/LlumAXdjqmf6OSYcvP4TA8ziXxOtDv1/qh67yFmimi9Pvw6Yt5Ky39RvcDkljInRC+ZFWZh8S/wO0Yn+Z5rlqboeg2hOe3mefcTNGKi2EL31Ymo3+xMM7b0oYCTF6Uz14ZeW2ARLV6u66iaLvF+jjlgnOkVLXZmMTzgh0hrNBP7Y1qvHR3mhU8+QDBLAN1EkUwSj0rMx+hVuUTfLAFhe2tvjFqMAIDXG6b+blEftHVudORyMKQ/qbU2L58rhuDMAnUlyMiyoEWO/gkpaI3Pn7QGB+4+NBpPqPny3wiNDsdELGh/RDGbDDTU= generated-by-azure"
}

variable "path" {
  type        = string
  default     = "/home/evwereic/.ssh/authorized_keys"
}

#########################
#storage_image_reference#
#########################

variable "offer" {
  type        = string
  default     = "0001-com-ubuntu-server-focal"
}

variable "publisher" {
  type        = string
  default     = "canonical"
}

variable "sku" {
  type        = string
  default     = "20_04-lts-gen2"
}

variable "image_version" {
  type        = string
  default     = "latest"
}


#################
#storage_os_disk#
#################

variable "caching" {
  type        = string
  default     = "ReadWrite"
}

variable "create_option" {
  type        = string
  default     = "FromImage"
}

variable "disk_size_gb" {
  type        = number
  default     = "30"
}

variable "managed_disk_type" {
  type        = string
  default     = "Premium_LRS"
}

variable "os_type" {
  type        = string
  default     = "Linux"
}

variable "write_accelerator_enabled" {
  type        = bool
  default     = false
}

variable "storage_os_disk_name" {
  type        = string
  default     = "sa18swapdDisk"
}