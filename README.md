# Arch bootstrap

This is an Ansible playbook to bootstrap a fresh Arch install. This should be run after either following [my quick guide](https://wiki.nas.reisub.io/tutorials/arch-install) or the [Arch wiki installation guide](https://wiki.archlinux.org/title/installation_guide).

## Configuring

Configuration is done in the `group_vars/all` file. The user password should be encrypted using Ansible vault.

Put your SSH private and public keys under `files/ssh/private` and `files/ssh/public`

## Running

### Install required roles

```bash
ansible-galaxy install -r requirements.yml
```

### Create user

This playbook should be run as root.

```bash
ansible-playbook user.yml
```

### Run playbook

This playbook should be run as your normal user.

```bash
ansible-playbook playbook.yml
```

## Developing

### Create a new role

```bash
cd roles
ansible-galaxy init --role-skeleton skeleton <role name>
```

### Run Ansible linter

```bash
ansible-lint -p playbook.yml roles
```
