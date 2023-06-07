variable "vmname" {
    type = string
    description = "The name of the virtual machine"
}

variable "resource_group_name" {
    type = string
    description = "The name of resource group"
}

variable "location" {
    type = string
    description = "Azure location "
}

variable "network_interface_ids" {
    type = list(string)
    description = "network interface id"
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
#     default = "0.0.1"
# }

variable "image_id" {
    type = string
    description = "Azure shared image id"    
}