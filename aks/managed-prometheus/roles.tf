resource "azurerm_role_assignment" "aks_role_assignemnt_nework" {
  scope                = azurerm_virtual_network.this.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_user_assigned_identity.aks_identity.principal_id
  skip_service_principal_aad_check = true
}

resource "azurerm_role_assignment" "aks_role_assignemnt_msi" {
  scope                = azurerm_user_assigned_identity.aks_kubelet_identity.id
  role_definition_name = "Managed Identity Operator"
  principal_id         = azurerm_user_assigned_identity.aks_identity.principal_id
  skip_service_principal_aad_check = true 
}

resource "azurerm_role_assignment" "grafana_monitoring_read" {
  scope                = azurerm_resource_group.this.id
  role_definition_name = "Monitoring Reader"
  principal_id         = azurerm_dashboard_grafana.this.identity[0].principal_id 
  skip_service_principal_aad_check = true 
}

resource "azurerm_role_assignment" "grafana_monitoring_data_read" {
  scope                = local.am_workspace_id 
  role_definition_name = "Monitoring Data Reader"
  principal_id         = azurerm_dashboard_grafana.this.identity[0].principal_id 
  skip_service_principal_aad_check = true 
}