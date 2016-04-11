# Vagrant

## Installation

Download and install according to your system.

In OSX with brew and cask: ```brew cask install vagrant```

## Recommendations

1. Create a project directory.

   ```bash
   vagrant init
   ```

2. Use atlas for download standard images. You can setup it in Vagrantfile.

3. Optional, setup extra configuration such as port forwarding, bootsrapt scripts, etc.

   Tip: ssh is enable by default :wink:

4. Test your VMs or boxes

## Workflow

1. Launch your boxes. ```vagrant up```

2. Test.

   Tip: you can modify files on your boxes without ssh onto them.

3. Optional, suspend your boxes.

4. Destroy your boxes. ```vagrant destroy```

Check workflow diagram of Sysadmin cast, if you need a visual intuition of it.

## Reference

[Sysadmin Casts](https://sysadmincasts.com/episodes/42-crash-course-on-vagrant-revised)
