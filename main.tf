
resource "null_resource" "this" {

  provisioner "local-exec" {
    command = <<EOF
#!/bin/bash

# Download Packages and Install Ansible
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible

# Checking Ansible version
ansible --version

# Create a new inventory file
touch hosts

# Add Host group name
echo "[${var.hosts_group}]" | tee -a hosts
EOF
  }
}

resource "null_resource" "hosts" {
  count = length(var.server_ips)

  provisioner "local-exec" {
    command = <<EOF
#!/bin/bash

# Add hosts to the inventory file
echo "${var.server_ips[count.index]}" | tee -a hosts

# Display the updated inventory file
echo "Ansible hosts have been added to the inventory file:"
EOF
  }

  depends_on = [
    null_resource.this
  ]
}

resource "null_resource" "ansible" {

  provisioner "local-exec" {
    command = <<EOF
#!/bin/bash
cat hosts
chmod 600 ${var.private_key}
ANSIBLE_HOST_KEY_CHECKING=false ANSIBLE_SSH_CONTROL_PATH_DIR=/home/tfc-agent/.tfc-agent/component/terraform/runs ansible-playbook -i hosts ${local.ansible_env} "${var.ansible_envs}" --private-key ${var.private_key} ${var.ansible_file} ${var.ansible_logs}
EOF
  }

  depends_on = [
    null_resource.hosts
  ]
}