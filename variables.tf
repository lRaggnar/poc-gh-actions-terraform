variable "environment" {
  description = "value"
  type        = string
}

variable "project_name" {
  description = "value"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name to be imported"
  type        = string
}

variable "location" {
  type = string
}

variable "country" {
  description = "country"
  type        = string
  default     = "CL"
}