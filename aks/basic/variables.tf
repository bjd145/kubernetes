variable "namespace" {
  description = "The namespace for the workload identity"
  type        = string
  default     = "default"
}

variable "azure_rbac_group_object_id" {
  description = "GUID of the AKS admin Group"
  default     = "15390134-7115-49f3-8375-da9f6f608dce"
}

variable "service_mesh_type" {
  description = "Type of Service Mesh for cluster"
  default     = "istio"
}

variable "region" {
  description = "Azure region to deploy to"
  default     = "southcentralus"
}

variable "vm_size" {
  description = "The SKU for the default node pool"
  default     = "Standard_B4ms"
}

variable "node_count" {
  description = "The default number of nodes to scale the cluster to"
  default     = 1
}