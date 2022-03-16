variable "instance_name" {
  description = "The name of the incstance as it appears in GCP"
  type        = string
}

variable "machine_type" {
  description = ""
  type        = string
}

variable "project_id" {
  description = "The GCP project to use for integration tests"
  type        = string
}

variable "region" {
  description = "The GCP region to create and test resources in"
  type        = string
}

variable "network" {
  description = "The name or self_link of the network to attach this interface to"
  type        = string
}

variable "nat_ip" {
  description = "Public ip address"
  default     = null
}