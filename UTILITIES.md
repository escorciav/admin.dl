# Commands
## Copy ssh-fingerprints onto head-node

```bash
ansible-playbook -i staging ssh-keyscan.yml
```

> ToDo: Add state to not overwrite known_hosts. Change user?

*Note:* I tried to make a role with it but not know how to force `connection: local` just for this task.
