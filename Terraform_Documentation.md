# Terraform Documentation

## What is Terraform

Terraform is an open-source infrastructure as code (IaC) tool that allows you to define, provision, and manage infrastructure resources across various cloud providers and services using a declarative configuration language. It enables automation, consistency, and repeatability in infrastructure management.

---

## Why Terraform

Terraform is widely used because it provides:

- A declarative language to define infrastructure, making configurations clear and easy to understand.
- Support for multiple cloud providers and services through a rich provider ecosystem.
- Infrastructure state management to track resource changes and prevent configuration drift.
- A plan and apply workflow that allows safe and predictable infrastructure changes.
- Automation and scalability for managing infrastructure across different environments.
- An active community and extensive documentation for support and extensions.

---

## Terraform Commands and Generated Files

When working with Terraform, several commands create specific files and folders that serve important purposes:

### terraform init

- Creates the `.terraform` directory.
- Purpose: This directory contains the provider plugins and modules required for your configuration. It initializes the working directory for use with Terraform.

### terraform plan

- Does not create new files by default but generates an execution plan.
- Purpose: Shows the changes Terraform will make to your infrastructure without applying them.

### terraform apply

- Creates or updates the `terraform.tfstate` file.
- Purpose: This file stores the current state of your infrastructure, mapping your configuration to real-world resources. It is essential for tracking resource changes.

- May create a backup file named `terraform.tfstate.backup`.
- Purpose: A backup of the previous state file to help recover from errors.

### terraform destroy

- Updates the `terraform.tfstate` file to reflect destroyed resources.

### Other files/folders

- `*.tf` files: These are your Terraform configuration files where you define resources, variables, outputs, and providers.
- `.terraform.lock.hcl`: This file locks the provider versions to ensure consistent deployments.

---

Please refer to this documentation as a guide to understand Terraform basics, its benefits, and the purpose of key files and folders created during Terraform workflows.
