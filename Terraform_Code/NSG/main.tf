provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  resource_provider_registrations = var.resource_provider_registrations
}

resource "azurerm_network_security_group" "Faraz-nsg" {
    location            = var.location
    name                = var.name
    resource_group_name = var.resource_group_name
    security_rule       = [
        {
            access                                     = "Allow"
            description                                = "For SSH connection with FarazAzureVM"
            destination_address_prefix                 = "*"
            destination_address_prefixes               = []
            destination_application_security_group_ids = []
            destination_port_range                     = "22"
            destination_port_ranges                    = []
            direction                                  = "Inbound"
            name                                       = "SSH"
            priority                                   = 300
            protocol                                   = "Tcp"
            source_address_prefix                      = null
            source_address_prefixes                    = [
		        "10.0.0.13",
                "10.0.184.213",
                "103.247.52.63",
                "103.247.7.171",
                "103.250.137.71",
                "106.214.9.211",
                "115.112.142.34",
                "115.112.142.35",
                "14.143.247.190",
                "14.97.73.250",
                "14.97.73.251",
                "152.58.61.96",
                "157.34.47.115",
                "157.34.9.189",
                "182.70.183.124",
                "182.76.141.106",
                "20.195.64.137",
                "49.249.110.122",
                "49.35.253.179",
	    ]
            source_application_security_group_ids      = []
            source_port_range                          = "*"
            source_port_ranges                         = []
        },
	{
            access                                     = "Allow"
            description                                = "For Jenkins Access  with FarazAzureVM"
            destination_address_prefix                 = "*"
            destination_address_prefixes               = []
            destination_application_security_group_ids = []
            destination_port_range                     = "8080"
            destination_port_ranges                    = []
            direction                                  = "Inbound"
            name                                       = "jenkinsport"
            priority                                   = 1000
            protocol                                   = "*"
            source_address_prefix                      = null
            source_address_prefixes                    = [
                "10.0.0.13",
                "10.0.184.213",
                "103.247.52.63",
                "103.247.7.171",
                "103.250.137.71",
                "106.214.9.211",
                "115.112.142.35",
                "14.143.247.190",
                "14.97.73.250",
                "14.97.73.251",
                "152.58.61.96",
                "157.34.47.115",
                "157.34.9.189",
                "182.70.183.124",
                "182.76.141.106",
                "20.247.145.208",
                "4.145.176.114",
                "4.193.39.248",
                "49.249.110.122",
                "49.35.253.179",
            ]
            source_application_security_group_ids      = []
            source_port_range                          = "*"
            source_port_ranges                         = []
        }
    ]
    tags                = {
        " Business Unit"     = var.Business_unit
        "Create date"       = var.Create_date
        "Project name"      = var.Project_name
        "Resource Owner"    = var.Resource_owner
        "Sub Business Unit" = var.Sub_business_unit
    }
}
