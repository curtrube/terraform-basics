# Terraform Basics

- Terraform can manage infrastructure on multiple cloud platforms and regions.
- Human-readable configuration language i.e. hcl.
- Terraform's state allows you to track resource changes throughout your deployments.
- Commit your configurations to version control.

## Prerequisites

- [Git](https://git-scm.com/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform)
- [VSCode Extension](https://marketplace.visualstudio.com/items?itemName=hashicorp.terraform)

## Terraform Workflow

1. **Scope** - Identify the infrastructure for your project.
1. **Author** - Write the configuration for your infrastructure.
1. **Initialize** - Install the plugins Terraform needs to manage the infrastructure.
1. **Plan** - Preview the changes Terraform will make to match your configuration.
1. **Apply** - Make the planned changes.

### Verify Terraform Installation

```bash
terraform -version
```

## Build

## Change

## Destroy

## Variables

## Outputs

## Remote State
