variable "server_ip" {
  type        = list(string)
  description = "List of IP addresses of the server need to sun ansible"
}

variable "ansible_file" {
  type        = string
  description = "Ansible execution file nam ewith its path"
  default     = "./ansible-scripts/ansible.yml"
}

variable "private_key" {
  type        = string
  description = " Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
}