data "azurerm_shared_image_version" "img" {
  name                = var.image_version
  image_name          = var.image_name
  gallery_name        = var.image_gallery
  resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "vm_subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}

# Data template cloud-init bootstrapping file
data "local_file" "cloudinit" {
  filename = "${path.module}/cloudinit.conf"
}

# Create (and display) an SSH key
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
} 

/* 
data "vault_generic_secret" "admin_name" {
  path = "<secret_path>"
}

data "vault_generic_secret" "admin_password" {
  path = "<secret_path>"
}

OR

data "vault_generic_secret" "my_secret" {
  path = "secret/path/to/your/secret"
}

*/

module "network-interface" {
    source = "../modules/network-interface"    
    vmname              = var.vmname
    location            = var.location
    resource_group_name = var.resource_group_name
    subnet_id           = data.azurerm_subnet.vm_subnet.id
}

module "virtual-machine" {
    source = "../modules/virtual-machine"    
    vmname                  = var.vmname
    location                = var.location
    resource_group_name     = var.resource_group_name
    network_interface_ids   = [module.network-interface.nic_id]
    vm_size                 = var.vm_size
    os_disk_type            = var.os_disk_type
  # admin_username        = data.vault_generic_secret.admin_name.data.username
  # admin_password        = data.vault_generic_secret.admin_password.data.password
  # OR
  # admin_username        = data.vault_generic_secret.my_secret.data["my_USER_key"]
  # admin_password        = data.vault_generic_secret.my_secret.data["my_PASS_key"]

    admin_username          = var.admin_username
    admin_password          = var.admin_password
    image_id                = data.azurerm_shared_image_version.img.id
    customdata_cloudinit    = data.local_file.cloudinit.content
    ssh_public_key = tls_private_key.ssh_key.public_key_openssh
}

# # Push private key back up to vault
# resource "vault_generic_secret" "my_secret" {
#   path = "secret/data/${var.vmname}-vm-ssh-key"

#   data = {
#     vm_name = var.name
#     ssh_private_key = tls_private_key.ssh_key.id
#   }
# }