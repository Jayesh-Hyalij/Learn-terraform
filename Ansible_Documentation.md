# What is Ansible?

Ansible is an open-source automation tool used for configuration management, application deployment, task automation, and IT orchestration. It allows you to automate repetitive tasks and manage infrastructure efficiently.

# Why We Use Ansible

- Simplifies complex IT tasks by automating them.
- Ensures consistency and repeatability in deployments.
- Reduces manual errors and saves time.
- Supports multi-tier deployments and orchestration.
- Agentless architecture reduces overhead on managed nodes.
- Integrates well with other tools and cloud providers.

# How Ansible Works

Ansible uses SSH to communicate with managed nodes. It pushes small programs called "modules" to the nodes, executes them, and removes them afterward. Playbooks written in YAML define the desired state and tasks to be executed on the nodes.

# Key Features of Ansible

- Agentless architecture: No need to install agents on target machines.
- Simple YAML syntax for playbooks.
- Idempotent operations to ensure consistent system states.
- Extensible with custom modules and plugins.
- Supports multi-tier deployments.
- Secure communication using SSH.

# Ansible Architecture Overview

Ansible follows a simple architecture consisting of:

- Control Node: The machine where Ansible is installed and from which commands are run.
- Managed Nodes: The target machines being managed.
- Inventory: A list of managed nodes.
- Modules: Units of work that Ansible executes.
- Playbooks: YAML files defining automation tasks.
- Plugins: Extend Ansible’s core functionality.

# Installation and Setup

Ansible can be installed on most Linux distributions using package managers or via pip:

```bash
sudo apt update
sudo apt install ansible
```

Or using pip:

```bash
pip install ansible
```

# Ansible File Language and Extension

- Ansible playbooks and configuration files are written in YAML.
- File extensions commonly used:
  - `.yml` or `.yaml` for playbooks and configuration files.
  - `.ini` for inventory files.

# Basic Concepts

## Inventory

Inventory is a file that defines the hosts and groups of hosts on which commands, modules, and playbooks operate.

Example inventory file:

```ini
[webservers]
web1.example.com
web2.example.com

[dbservers]
db1.example.com
```

## Variables

Variables are used to manage differences between systems.

## Playbooks

YAML files that define a series of tasks to be executed on hosts.

Example playbook snippet:

```yaml
- hosts: webservers
  tasks:
    - name: Install nginx
      apt:
        name: nginx
        state: present
```

## Roles

A way to organize playbooks and other files into reusable components.

        db1.example.com:

## Templates

Files that can be dynamically generated using Jinja2 templating.

# Common Ansible Commands

- `ansible all -m ping` — Ping all hosts in inventory.
- `ansible-playbook site.yml` — Run a playbook.
- `ansible-inventory --list` — List inventory hosts.
- `ansible-doc -l` — List all available modules.
- `ansible-playbook --check` — Run playbook in dry-run mode.

# Example Playbook

```yaml
- name: Setup web server
  hosts: webservers
  become: yes
  tasks:
    - name: Install nginx
      apt:
        name: nginx
        state: present

    - name: Start nginx service
      service:
        name: nginx
        state: started
        enabled: yes
```

# Think of Terraform as the architect building your cloud house, and Ansible as the electrician/plumber setting it up inside.

# When to Use What (Terraform vs Ansible)

- Use **Terraform** for provisioning and managing infrastructure resources (e.g., servers, networks, storage).
- Use **Ansible** for configuring and managing software and services on existing infrastructure.
- Terraform is declarative and focuses on infrastructure lifecycle.
- Ansible is procedural and focuses on configuration management and application deployment.
- Both tools can be used together for full infrastructure automation.

# Best Practices

- Use roles to organize playbooks.
- Keep inventory files clean and organized.
- Use variables and templates for flexibility.
- Test playbooks in a staging environment.
- Use version control for playbooks.

# Useful Resources and References

- Official Ansible Documentation: https://docs.ansible.com/
- Ansible GitHub Repository: https://github.com/ansible/ansible
- Ansible Galaxy (Role repository): https://galaxy.ansible.com/
