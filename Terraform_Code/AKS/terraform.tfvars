subscription_id                     = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
resource_provider_registrations     = "none"

automatic_upgrade_channel           = "patch"
azure_policy_enabled                = true
cost_analysis_enabled               = false
dns_prefix                          = "faraz-dns"
http_application_routing_enabled    = false
kubernetes_version                  = "1.28.14"
local_account_disabled              = false
location                            = "southeastasia"
name                                = "faraz-test-aks-cluster"
node_os_upgrade_channel             = "NodeImage"
node_resource_group                 = "faraz_sa1_test_eic"
oidc_issuer_enabled                 = false
open_service_mesh_enabled           = false
private_cluster_enabled             = false
private_cluster_public_fqdn_enabled = false
resource_group_name                 = "sa1_test_eic_FarajAnsari"
role_based_access_control_enabled   = true
run_command_enabled                 = true
sku_tier                            = "Free"
support_plan                        = "KubernetesOfficial"
workload_identity_enabled           = false

auto_scaler_profile = {
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

default_node_pool = {
    auto_scaling_enabled = false
    fips_enabled         = false
    host_encryption_enabled = false
    kubelet_disk_type    = "OS"
    max_pods             = 110
    node_pool_name       = "faraz"
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

identity = {
        type = "SystemAssigned"
    }

key_vault_secrets_provider = {
        secret_rotation_enabled  = false
        secret_rotation_interval = "2m"
    }

kubelet_identity = {
          client_id                 = "d2f594f7-fa53-4930-877c-1f28e1cd4e37"
          object_id                 = "a1c057be-a3da-4205-86ef-057f4e5c0e7d"
          user_assigned_identity_id = "/subscriptions/664b6097-19f2-42a3-be95-a4a6b4069f6b/resourceGroups/MC_sa1_dev_eic_ip_implementation_sa18swapd_southeastasia/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sa18swapd-agentpool"
    }

network_profile = {
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