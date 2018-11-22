variable "instance_count" {
  default = "1"
}

variable "project" {
  description = "Project ID"
  default     = "aidjek-infrastructure"
}

variable "region" {
  description = "Region"
  default     = "europe-west1"
}

variable "zone" {
  description = "Zone"
  default     = "europe-west1-b"
}

variable "machine_type" {
  description = "Machine Type in GCP"
  default     = "g1-small"
}

variable "public_key_path" {
  description = "Path to the public key, used for ssh access"
  default     = "/Users/aidjek/.ssh/appuser.pub"
}

variable "app_disk_image" {
  description = "Disk Image for reddit app"
  default     = "reddit-app-base"
}

variable "private_key_path" {
  description = "Path to the private key, used for ssh connection"
  default     = "/Users/aidjek/.ssh/appuser"
}
