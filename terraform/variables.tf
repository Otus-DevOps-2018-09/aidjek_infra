variable "instance_count" {
  default = "1"
}

variable "project" {
  description = "Project ID"
}

variable "region" {
  description = "Region"
  default     = "europe-west1"
}

variable "public_key_path" {
  description = "Path to the public key, used for ssh access"
}

variable "disk_image" {
  description = "Disk Image"
}

variable "app_disk_image" {
  description = "Disk Image"
}

variable "private_key_path" {
  description = "Path to the private key, used for ssh connection"
}
