# Define variables

variable "host_cluster_name" {
  description = "The name of the host cluster"
  type        = string
  validation {
    condition     = length(var.host_cluster_name) > 0
    error_message = "The cluster name must not be empty."
  }
}

variable "namespace_quota_size" {
  type    = string
  default = "small"
}


variable "device_details" {
  description = "Device/node on which vcluster pods will be deployed"
  type        = any
  default     = {}
}

output "host_cluster_name" {
  value = var.host_cluster_name
}

output "device_details" {
  description = "Raw device details JSON blob"
  value       = var.device_details
}

output "namespace_quota_size" {
  value = var.namespace_quota_size
}
