variable "rg_name" {
    default = "rgtf-eus2"
}
variable "rg_location" {
    default = "east us2"
}

variable "vm_name" {
    default = "tf-vm"
}
variable "vm_size" {
    default = "Standard_B1s"
}
variable "admin_username" {
    default = "testadminuser"
}
variable "admin_password" {
    default = "Testadmin@123!"
}

variable "vnet_name" {
    default = "tf-vnet"
}
variable "vnet_address_space" {
    default = "10.0.0.0/16"
}

variable "subnet_name" {
    default = "tf-subnet"
}
variable "subnet_address_prefix" {
    default = "10.0.1.0/24"
}

variable "nic_name" {
    default = "tf-nic"
}

variable "nsg_name" {
    default = "tf-nsg"
}   
