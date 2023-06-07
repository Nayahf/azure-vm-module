variable "resource_group_name" {
    type = string
    description = "resource group name of the virtual network"
}

variable "location" {
    type = string
    description = "location of the virtual network"
}

variable "virtual_network_name" {
    type = string
    description = "name of the virtual network"
}

# variable "virtual_network_address_space" {
#     type = list(string)
#     description = "address space of the virtual network"
# }

# variable "subnet_name" {
#     type = string
#     description = "name of the subnet"
# }

variable "subnet_id" {
    type = string
    description = "name of the subnet"
}

# variable "subnet_address_prefix" {
#     type = string
#     description = "address prefix of the subnet"
# }

variable "vmname" {
    type = string
    description = "name of the vm"
}

variable "vm_size" {
    type = string
    description = "size of the virtual machine"
}

variable "os_disk_type" {
    type = string
    description = "type of the os disk. example Standard_LRS"
}

variable "admin_username" {
    type = string
    description = "local admin user of the virtual machine"
}

variable "admin_password" {
    type = string
    description = "password of the local admin user"
}

# variable "image_publisher" {
#     type = string
#     description = "Azure image publisher"
#     default = "myPublisher"
# }

# variable "image_offer" {
#     type = string
#     description = "Azure image offer"
#     default = "myOffer"
# }

# variable "image_sku" {
#     type = string
#     description = "Azure image sku"
#     default = "mySKU"
# }

# variable "image_version" {
#     type = string
#     description = "Azure image sku"  
# }

variable "image_name" {
    type = string
    description = "Azure image name"  
}

variable "image_gallery" {
    type = string
    description = "Azure image gallery"  
}