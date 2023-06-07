# output "vault_address" {
#     description = "url of vault"
#     value = var.VAULT_ADDR
# }

# output "subnet-id" {
#     description = "subnet to receive vm"
#     value = data.azurerm_subnet.vm_subnet.id
# }

output "new_vm_id" {
    description = "id of the new virtual machine"
    value = module.virtual-machine.vm_id
}