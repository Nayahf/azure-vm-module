output "vm_id" {
    description = "id of the new virtual machine"
    value = azurerm_linux_virtual_machine.new_vm.id
}

output "ssh_public_key" {
    description = "This is the vm public key"
    value = azurerm_linux_virtual_machine.new_vm.admin_ssh_key    
}