variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_provider_registrations" {
  type = string
}

variable "automatic_upgrade_channel" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = string
}

variable "azure_policy_enabled" {
  description = "The Name of the User Assigned Identity assigned to the Kubelets."
  type        = bool
}

variable "cost_analysis_enabled" {
  description = "The Name of the User Assigned Identity assigned to the Kubelets."
  type        = bool
}

variable "dns_prefix" {
  description = "set varible to use specific version,insted of lattest one"
  type        = string
}

variable "http_application_routing_enabled" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = bool
}

variable "kubernetes_version" {
  description = "set varible to use specific version,insted of lattest one"
  type        = string
}

variable "local_account_disabled" {
  description = "The Name of the User Assigned Identity assigned to the Kubelets."
  type        = bool
}

variable "location" {
  description = "The azure location to setup the cluster and related resources"
  type        = string
}

variable "name" {
  description = "Name of AKS cluster"
  type        = string
}

variable "node_os_upgrade_channel" {
  description = "The Type of Identity which should be used for this Disk Encryption Set."
  type        = string
}

variable "node_resource_group" {
  description = "Name of the resource group"
  type        = string
}

variable "oidc_issuer_enabled" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None."
  type        = bool
}

variable "open_service_mesh_enabled" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None."
  type        = bool
}

variable "private_cluster_enabled" {
  description = "This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located."
  type        = bool
}

variable "private_cluster_public_fqdn_enabled" {
  description = "Specifies whether a Public FQDN for this Private Cluster should be added."
  type        = bool
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "role_based_access_control_enabled" {
  description = "Whether Role Based Access Control for the Kubernetes Cluster should be enabled."
  type        = bool
}

variable "run_command_enabled" {
  description = "Whether to enable run command for the cluster or not."
  type        = bool
}

variable "sku_tier" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = string
}

variable "support_plan" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster."
  type        = string
}

variable "workload_identity_enabled" {
  description = "Specifies whether Azure AD Workload Identity should be enabled for the Cluster."
  type        = bool
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

}

variable "identity" {
    type = object ({
        type         = string
})
}

variable "key_vault_secrets_provider" {
    type = object({
        secret_rotation_enabled  = bool
        secret_rotation_interval = string
    })
}

variable "kubelet_identity" {
    type = object({
    client_id                 = string
    object_id                 = string
    user_assigned_identity_id = string
  })
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
}
