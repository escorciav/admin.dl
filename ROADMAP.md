# Ansible

Automation and orchestation for admin multiple machines.

## Getting started

0. Setup "head-node"

   * Check dependencies on "head-node" such as python-devel, sshpass.

   * Update /etc/hosts with "IP name" for intuitive node addressing

1. Install ansible in "head-node".
   [Help here](http://docs.ansible.com/intro_installation.html)

2. Add ssh authorization

   ```bash
   ssh-keyscan node1 node2 >> .ssh/known_hosts
   ```

3. Add ssk-key to access nodes from "head-node" without typing password

   Optional: create ssh-hey if not exist yet. ```ssh-keygen -t rsa -b 2048```

   ```
   ansible-playbook e45-ssh-addkey.yml --ask-pass
   ```

   Requirement:
   [add-ssh-key playbook](https://github.com/jweissig/episode-45/blob/master/examples/e45-ssh-addkey.yml)

4. Install package from your package manager

   Follow this sample [playbook](https://github.com/jweissig/episode-45/blob/master/examples/e45-ntp-install.yml) and the [documentation](http://docs.ansible.com/list_of_packaging_modules.html).

## Workflow

1. Do your job manually. Use vagrant if possible.

2. Automation, is an iterative process. Again, Vagrant.

   1. Write a playbook.

      1. Try ad-hoc commands, if no idea.

   2. Test until succeed.

3. Run in real machines.

## Nice Feats

* Playbooks, scripts with information simple to understand for 2nd gen of IT guys.

   * Boost them with `vars`, `handlers`, `loops`, `roles`.

* Zero Down-time deployment, upgrade few machines without affect users

   Read more on section: Continuous Delivery and Rolling Upgrades

## References

* Summary of many Ansible feats: [Sysadmin Casts](https://sysadmincasts.com/episodes/45-learning-ansible-with-vagrant-part-2-4)
