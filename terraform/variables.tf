variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "The name of the resource group where the resources will be deployed."
  type        = string
  default     = "rg-aks-project"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "aks-cluster-th"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 3
}

variable "node_vm_size" {
  description = "The size of the virtual machines in the AKS cluster."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "acraksth"
}