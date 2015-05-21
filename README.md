# Ansible example with Vagrant and ServerSpec

This example [Ansible](http://www.ansible.com/home) playbook:

* sets `hostname` to `vagrantbox`,
* installs NGiNX and monitors it with Monit,
* installs PostgreSQL and starts it,
* configures `ufw` to allow incoming traffic on 22 and 80 ports.

Configuration is verified with [ServerSpec](http://serverspec.org/).

## Requirements

Install dependencies from [Ansible Galaxy](https://galaxy.ansible.com/):

```bash
ansible-galaxy -p ~/.ansible/roles install -r requirements.txt
```

Install `vagrant-serverspec` plugin:

```bash
vagrant plugin install vagrant-serverspec
```

## Usage

Run `vagrant up`.
