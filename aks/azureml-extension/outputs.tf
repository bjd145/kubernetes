output "AKS_RESOURCE_GROUP" {
  value     = module.cluster.AKS_RESOURCE_GROUP
  sensitive = false
}

output "AKS_CLUSTER_NAME" {
  value     = module.cluster.AKS_CLUSTER_NAME
  sensitive = false
}

output "AKS_CLUSTER_ID" {
  value     = module.cluster.AKS_CLUSTER_ID
  sensitive = false
}

output "ML_WORKSPACE_NAME" {
    value = azurerm_machine_learning_workspace.this.name
    sensitive = false
}