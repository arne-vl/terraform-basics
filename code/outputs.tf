output "storage_account_naam" {
  description = "De naam van het aangemaakte storage account."
  value       = azurerm_storage_account.storage.name
}
