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
}

variable "app_disk_image" {
  description = "Disk Image for reddit app"
  default     = "reddit-app-base"
}

variable "db_disk_image" {
  description = "Disk Image for Reddit db"
  default     = "reddit-db-base"
}

variable "private_key_path" {
  description = "Path to the private key, used for ssh connection"
}
