output "AKS_RESOURCE_GROUP" {
    value = azurerm_kubernetes_cluster.this.resource_group_name
    sensitive = false
}

output "AKS_CLUSTER_NAME" {
    value = azurerm_kubernetes_cluster.this.name
    sensitive = false
}

output "AKS_CLUSTER_ID" {
    value = azurerm_kubernetes_cluster.this.id
    sensitive = false
}

output "AKS_OIDC_ISSUER" {
    value = azurerm_kubernetes_cluster.this.oidc_issuer_url
    sensitive = false
}

output "APP_NAME" {
    value = local.resource_name
    sensitive = false
}

output "AZURE_SUBCRIPTION_ID" {
    value = data.azurerm_subscription.current.subscription_id
    sensitive = false
}