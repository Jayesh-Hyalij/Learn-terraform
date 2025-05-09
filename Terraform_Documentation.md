# Terraform Documentation

Terraform is an open-source infrastructure as code (IaC) tool that allows you to define and provision infrastructure using a declarative configuration language.

---

## Terraform Setup on Windows

Follow these steps to set up Terraform on a Windows machine:

### 1. Download Terraform

- Download the Terraform zip file from the official website: [https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html)

### 2. Extract the Zip File

- Extract the contents of the zip file to a folder of your choice.

### 3. Move the Terraform Executable

- Move the `terraform.exe` file to a directory such as `C:\terraform\`

### 4. Add Terraform to the System PATH

- Add the directory where you placed `terraform.exe` (e.g., `C:\terraform\`) to your system's environment PATH variable.
- This allows you to run `terraform` commands from any command prompt or PowerShell window.

### 5. Verify Installation

Open a new Command Prompt or PowerShell window and run:

```bash
terraform -v
```

You should see the installed Terraform version printed.

---

## Running Terraform

- You can execute Terraform commands using Command Prompt or PowerShell.
- Before using Terraform with AWS, configure your AWS CLI credentials by running:

```bash
aws configure
```

This sets up your AWS access key, secret key, region, and output format.

---

## Notes

- Ensure you have the AWS CLI installed and configured if you plan to use Terraform with AWS.
- Keep your Terraform executable updated to benefit from the latest features and security patches.
- Use version control (e.g., Git) to manage your Terraform configuration files.
- Always review and plan your infrastructure changes with `terraform plan` before applying them.
