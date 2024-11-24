variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
}

variable "automatic_upgrade_channel" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = string
  default     = "patch"
}

variable "azure_policy_enabled" {
  description = "The Name of the User Assigned Identity assigned to the Kubelets."
  type        = bool
  default     = true
}

variable "cost_analysis_enabled" {
  description = "The Name of the User Assigned Identity assigned to the Kubelets."
  type        = bool
  default     = false
}

variable "dns_prefix" {
  description = "set varible to use specific version,insted of lattest one"
  type        = string
  default     = "sa18swapd-dns"
}

variable "http_application_routing_enabled" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = bool
  default     = false
}

variable "kubernetes_version" {
  description = "set varible to use specific version,insted of lattest one"
  type        = string
  default     = "1.28.14"
}

variable "local_account_disabled" {
  description = "The Name of the User Assigned Identity assigned to the Kubelets."
  type        = bool
  default     = false
}

variable "location" {
  description = "The azure location to setup the cluster and related resources"
  type        = string
  default     = "southeastasia"
}

variable "name" {
  description = "Name of AKS cluster"
  type        = string
  default     = true
}

variable "node_os_upgrade_channel" {
  description = "The Type of Identity which should be used for this Disk Encryption Set."
  type        = string
  default     = "NodeImage"
}

variable "node_resource_group" {
  description = "Name of the resource group"
  type        = string
  default     = true
}

variable "oidc_issuer_enabled" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None."
  type        = bool
  default     = false
}

variable "open_service_mesh_enabled" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None."
  type        = bool
  default     = false
}

variable "private_cluster_enabled" {
  description = "This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located."
  type        = bool
  default     = false
}

variable "private_cluster_public_fqdn_enabled" {
  description = "Specifies whether a Public FQDN for this Private Cluster should be added."
  type        = bool
  default     = false
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "sa1_dev_eic_ip_implementation"
}

variable "role_based_access_control_enabled" {
  description = "Whether Role Based Access Control for the Kubernetes Cluster should be enabled."
  type        = bool
  default     = true
}

variable "run_command_enabled" {
  description = "Whether to enable run command for the cluster or not."
  type        = bool
  default     = true
}

variable "sku_tier" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = string
  default     = "Free"
}

variable "support_plan" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = string
  default     = "KubernetesOfficial"
}

variable "workload_identity_enabled" {
  description = "Specifies whether Azure AD Workload Identity should be enabled for the Cluster."
  type        = bool
  default     = false
}

variable "auto_scaler_profile" {
    type = object({
      balance_similar_node_groups      = bool
      empty_bulk_delete_max            = string
      expander                         = string
      max_graceful_termination_sec     = string
      max_node_provisioning_time       = string
      max_unready_nodes                = number
      max_unready_percentage           = number
      new_pod_scale_up_delay           = string
      scale_down_delay_after_add       = string
      scale_down_delay_after_delete    = string
      scale_down_delay_after_failure   = string
      scale_down_unneeded              = string
      scale_down_unready               = string
      scale_down_utilization_threshold = string
      scan_interval                    = string
      skip_nodes_with_local_storage    = bool
      skip_nodes_with_system_pods      = bool
      })

    default = {
      balance_similar_node_groups      = false
      empty_bulk_delete_max            = "10"
      expander                         = "random"
      max_graceful_termination_sec     = "600"
      max_node_provisioning_time       = "15m"
      max_unready_nodes                = 3
      max_unready_percentage           = 45
      new_pod_scale_up_delay           = "0s"
      scale_down_delay_after_add       = "10m"
      scale_down_delay_after_delete    = "10s"
      scale_down_delay_after_failure   = "3m"
      scale_down_unneeded              = "10m"
      scale_down_unready               = "20m"
      scale_down_utilization_threshold = "0.5"
      scan_interval                    = "10s"
      skip_nodes_with_local_storage    = false
      skip_nodes_with_system_pods      = true
    }
}


variable "default_node_pool" {
  type = object({
    auto_scaling_enabled = bool
    fips_enabled         = bool
    host_encryption_enabled = bool
    kubelet_disk_type    = string
    max_pods             = number
    node_pool_name       = string    
    node_count           = number
    node_public_ip_enabled = bool
    only_critical_addons_enabled = bool
    orchestrator_version = string
    os_disk_size_gb      = number
    os_disk_type         = string
    os_sku               = string
    scale_down_mode      = string
    type                 = string
    ultra_ssd_enabled    = bool
    vm_size              = string    
  })

  default = {
    auto_scaling_enabled = false
    fips_enabled         = false
    host_encryption_enabled = false
    kubelet_disk_type    = "OS"
    max_pods             = 110
    node_pool_name       = "evwer"
    node_count           = 1
    node_public_ip_enabled = false
    only_critical_addons_enabled  = false
    orchestrator_version = "1.28.14"
    os_disk_size_gb      = 128
    os_disk_type         = "Managed"
    os_sku               = "Ubuntu"
    scale_down_mode      = "Delete"
    type                 = "VirtualMachineScaleSets"
    ultra_ssd_enabled    = false
    vm_size              = "Standard_D2s_v3"
  }
}

variable "identity" {
    type = object ({
        type         = string
})
    default = {
        type = "SystemAssigned"
    }
}

variable "key_vault_secrets_provider" {
    type = object({
        secret_rotation_enabled  = bool
        secret_rotation_interval = string
    })
    default = {
        secret_rotation_enabled  = false
        secret_rotation_interval = "2m"
    }
}

variable "kubelet_identity" {
    type = object({
    client_id                 = string
    object_id                 = string
    user_assigned_identity_id = string
  })
    default = {
        client_id                 = "d2f594f7-fa53-4930-877c-1f28e1cd4e37"
        object_id                 = "a1c057be-a3da-4205-86ef-057f4e5c0e7d"
        user_assigned_identity_id = "/subscriptions/664b6097-19f2-42a3-be95-a4a6b4069f6b/resourceGroups/MC_sa1_dev_eic_ip_implementation_sa18swapd_southeastasia/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sa18swapd-agentpool"
    }
}

variable "network_profile" { 
    type = object({
        dns_service_ip      = string
        ip_versions         = list(string)
        load_balancer_sku   = string
        network_data_plane  = string
        network_plugin      = string
        network_policy      = string
        outbound_type       = string
        pod_cidr            = string
        pod_cidrs           = list(string)
        service_cidr        = string
        service_cidrs       = list(string)
    })

    default = {
            dns_service_ip      = "10.0.0.10"
            ip_versions         = [
                "IPv4",
            ]
            load_balancer_sku   = "standard"
            network_data_plane  = "azure"
            network_plugin      = "kubenet"
            network_policy      = "calico"
            outbound_type       = "loadBalancer"
            pod_cidr            = "10.244.0.0/16"
            pod_cidrs           = [
                "10.244.0.0/16",
            ]
            service_cidr        = "10.0.0.0/16"
            service_cidrs       = [
                "10.0.0.0/16",
            ]
        }
}
