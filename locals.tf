locals {
  ansible_env = var.ansible_envs == null ? null : "-e"
}