# Getting started

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

```
ansible-playbook e45-ssh-addkey.yml --ask-pass
```

Requirement:
[add-ssh-key playbook](https://github.com/jweissig/episode-45/blob/master/examples/e45-ssh-addkey.yml)

4. Install package from your package manager

Follow this sample
[playbook](https://github.com/jweissig/episode-45/blob/master/examples/e45-ntp-install.yml)
and the [documentation](http://docs.ansible.com/list_of_packaging_modules.html).

## References

[Sysadmin Casts](https://sysadmincasts.com/episodes/45-learning-ansible-with-vagrant-part-2-4)
