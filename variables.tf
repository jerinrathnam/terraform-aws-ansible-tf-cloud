variable "server_ips" {
  type        = list(string)
  description = "List of IP addresses of the server need to sun ansible"
  default     = null
}

variable "ansible_file" {
  type        = string
  description = "Ansible execution file nam ewith its path"
  default     = null
}

variable "private_key" {
  type        = string
  description = " Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  default     = null
}

variable "hosts_group" {
  type        = string
  description = "Name of the ansible hosts group"
  default     = "all"
}

variable "ansible_envs" {
  type        = string
  description = "Environment variables for the ansible script"
  default     = null
}

variable "ansible_logs" {
  type        = string
  description = "Enter any one of the following values to enable ansible logs. '-v', '-vv', '-vvv'"
  default     = null
}