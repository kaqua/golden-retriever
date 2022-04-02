variable "environment" {
  type    = string
  default = "staging"
  validation {
    condition     = can(regex("production", var.environment)) || can(regex("staging", var.environment))
    error_message = "The environment value must be a 'production' or 'staging'."
  }
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "profile" {
  type    = string
  default = "default"
}

variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "security_group_ids" {
  type    = list(string)
  default = ["sg-xxxxxxxxxxxxx", "sg-xxxxxxxxxxxxx"]
}

variable "service_name" {
  type    = string
  default = "sample"
}

variable "ssh_interface" {
  type    = string
  default = "private_ip"
}

variable "subnet_id" {
  type    = string
  default = "subnet-xxxxxxxxxxxxx"
}

variable "vpc_id" {
  type    = string
  default = "vpc-xxxxxxxxxxxxx"
}
