#######################################################
# Virtual Machine 1: Jenkins-Sever: sa1vmswftpd-manual#
#######################################################
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  resource_provider_registrations = "none"
}

resource "azurerm_virtual_machine" "Virtual Machine" {
    count = 1
    location              = var.location
    name                  = var.name
    network_interface_ids = [
        var.network_interface_ids
    ]
    resource_group_name   = var.resource_group_name
    tags                  = {
        " Business Unit"    = var.Business_Unit
        "Create date"       = var.Create_Date
        "Project name"      = var.Project_name
        "Resource Owner"    = var.Resource_Owner
        "Sub Business Unit" = var.Sub_Business_Unit
    }
    vm_size               = var.vm_size
    zones                 = []


    identity {
        type         = var.identity_type
    }

    os_profile {
    computer_name  = "${var.vm_hostname}${count.index}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
    }

    os_profile_linux_config {
        disable_password_authentication = var.disable_password_authentication

        ssh_keys {
            key_data = var.key_data
            path     = var.path
        }
    }

    storage_image_reference {
        offer     = var.offer
        publisher = var.publisher
        sku       = var.sku
        version   = var.image_version
    }

    storage_os_disk {
        caching                   = var.caching
        create_option             = var.create_option
        disk_size_gb              = var.disk_size_gb
        managed_disk_type         = var.managed_disk_type
        name                      = var.storage_os_disk_name
        os_type                   = var.os_type
        write_accelerator_enabled = var.write_accelerator_enabled
    }
}