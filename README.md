## Introduction

This Terraform module for Ansible provides a seamless integration between Terraform, an infrastructure-as-code tool, and Ansible, a powerful automation and configuration management platform. This module enables you to automate the provisioning and configuration of infrastructure resources using Terraform and then leverage Ansible to manage the software configuration and deployment on those resources.

Ansible simplifies the process of managing and configuring systems by using a declarative approach and utilizing YAML-based playbooks. By combining Terraform and Ansible, you can achieve end-to-end automation of infrastructure provisioning and software deployment, ensuring consistency and repeatability across your environment.

This module allows you to define and provision infrastructure resources using Terraform, such as virtual machines, networks, and storage. Once the infrastructure is in place, you can seamlessly invoke Ansible playbooks to configure and manage the software components on those resources.

Lastly, the combination of Terraform and Ansible allows for flexibility and extensibility. You can leverage the extensive collection of Ansible modules and community-driven roles to configure and manage a wide range of software components and systems.


## Usage

```
  module "ansible" {
    source = "jerinrathnam/ansible-tf-cloud/aws"
    
    server_ips   = ["133.43.43.65"]
    ansible_file = "ansible.yml"
    private_key  = "private-key.pem"
  }
```


## Examples

- [Apache Install with Ansible](https://github.com/jerinrathnam/terraform-aws-ansible-tf-cloud/tree/master/examples/basic-apache-server)
- [Ansible complete](https://github.com/jerinrathnam/terraform-aws-ansible-tf-cloud/tree/master/examples/complete)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.ansible](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.hosts](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ansible_envs"></a> [ansible\_envs](#input\_ansible\_envs) | Environment variables for the ansible script | `string` | `null` | no |
| <a name="input_ansible_file"></a> [ansible\_file](#input\_ansible\_file) | Ansible execution file nam ewith its path | `string` | `null` | no |
| <a name="input_ansible_logs"></a> [ansible\_logs](#input\_ansible\_logs) | Enter any one of the following values to enable ansible logs: `-v`,`-vv`, `-vvv` | `string` | `null` | no |
| <a name="input_hosts_group"></a> [hosts\_group](#input\_hosts\_group) | Name of the ansible hosts group | `string` | `"all"` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource | `string` | `null` | no |
| <a name="input_server_ips"></a> [server\_ips](#input\_server\_ips) | List of IP addresses of the server need to sun ansible | `list(string)` | `null` | no |

## Outputs

No outputs.


## Author
Module is maintained by [Jerin Rathnam](https://github.com/jerinrathnam).

**LinkedIn :** _[Jerin Rathnam](https://www.linkedin.com/in/jerin-rathnam)_.

## License
Apache 2 Licensed. See [LICENSE](https://github.com/jerinrathnam/terraform-aws-ansible-tf-cloud/blob/master/LICENSE) for full details.