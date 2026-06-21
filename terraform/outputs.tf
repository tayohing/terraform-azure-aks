output "acr_login_server" {
  value       = azurerm_container_registry.main.login_server
  description = "The URL of the Azure Container Registry."
}

output "aks_cluster_name" {
  value       = azurerm_kubernetes_cluster.main.name
  description = "The name of the AKS cluster."
}

output "aks_cluster_kube_config" {
  value       = azurerm_kubernetes_cluster.main.kube_config_raw
  description = "The raw kubeconfig of the AKS cluster."
  sensitive   = true
}

output "azurerm_resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "The name of the Azure Resource Group."
}