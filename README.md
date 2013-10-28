# Overview
This repository contains a series of scripts that are used in the
provisioning and configuring a server to run the [wd42-site](https://github.com/wd42/wd42-site) application.

The following is assumed:

- Ubuntu 12.04 as the base OS
- SSH Keys and access are already in place

## Deployment
Simply run the following and within no time everything will be good in the world.

```bash
# curl https://raw.github.com/wd42/wd42-deployment/master/bootstrap.sh | bash
```

or if you prefer [vagrant](http://www.vagrantup.com):

```bash
$ vagrant plugin install vagrant-berkshelf
$ vagrant up
```

and go to http://localhost:3000/

