## Requirements

No requirements.

## Providers

No providers.

## Description

This is an example of this Ansible script to Deploy an Apache server on an Ubuntu machine...

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_apache"></a> [apache](#module\_apache) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ansible_file"></a> [ansible\_file](#input\_ansible\_file) | Ansible execution file nam ewith its path | `string` | `"./ansible-scripts/ansible.yml"` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource | `string` | n/a | yes |
| <a name="input_server_ips"></a> [server\_ips](#input\_server\_ips) | IP address of the server need to sun ansible | `string` | n/a | yes |

## Outputs

No outputs.
