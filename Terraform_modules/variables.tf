variable "name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "region" {
  type = string
}
variable "disk" {
  type        = string
  description = "The type of boot disk to use (e.g., pd-standard)"
}


variable "bootdisk_size" {
  type = string
}


variable "project_id" {
  type = string
}


variable "image" {
  type = string
}

variable "network_self_link" {
  type        = string
  description = "The self link of the VPC network"
}

variable "subnet_self_link" {
  type        = string
  description = "The self link of the subnet"
}

variable "service_account_email" {
  type        = string
  description = "Service account email for the VM"
}


variable "deletion_protection" {
  type = bool
}