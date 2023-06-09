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

output "customdata" {
  value = data.local_file.cloudinit.content
}

output "vm_public_key" {
    description = "This is the vm public key"
    value = module.virtual-machine.ssh_public_key    
}

output "ssh_private_key" {
    description = "This is the vm private key"
    value = tls_private_key.ssh_key.id    
}