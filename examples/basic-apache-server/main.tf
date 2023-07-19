module "apache" {
  source = "../../"

  server_ips   = var.server_ips
  ansible_file = var.ansible_file
  private_key  = var.private_key
}