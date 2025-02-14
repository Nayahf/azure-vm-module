variable "resource_group_name" {
  type        = string
  description = "resource group name of the virtual network"
}

variable "location" {
  type        = string
  description = "location of the virtual network"
}

variable "virtual_network_name" {
  type        = string
  description = "name of the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "name of the subnet"
}

variable "vmname" {
  type        = string
  description = "name of the vm"
}

variable "vm_size" {
  type        = string
  description = "size of the virtual machine"
}

variable "os_disk_type" {
  type        = string
  description = "type of the os disk. example Standard_LRS"
}

# variable "admin_username" {
#   type        = string
#   description = "local admin user of the virtual machine"
# }

# variable "admin_password" {
#   type        = string
#   description = "password of the local admin user"
# }

variable "vault_vmuser_secret_path" {
  type        = string
  description = "vm user credentials"
}

variable "image_version" {
  type        = string
  description = "Azure image version"
}

variable "image_name" {
  type        = string
  description = "Azure image name"
}

variable "image_gallery" {
  type        = string
  description = "Azure image gallery"
}

variable "VAULT_ADDR" {
  type        = string
  description = "address of vault cluster"
}

variable "VAULT_TOKEN" {
    type = string
    description = "Token to access vault"  
}

variable "VAULT_NAMESPACE" {
    type = string
    description = "Admin vault access"  
}