module "apache" {
  source = "../../"

  server_ip    = ["133.43.43.65", "54.45.145.33"]
  ansible_file = "./ansible-scripts/ansible.yml"
  private_key  = "priavte-key.pem"
  ansible_envs = "name=terraform db_name=testdb db_pass=passwd"
  ansible_logs = "-vv"
}