output "public_docker_ip" {
  description = "Public IP of the Container Group"
  value = azurerm_container_group.container_group.ip_address
  depends_on = [ azurerm_container_group.container_group ]
}