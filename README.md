## Enrich gitlab system
This repository provides web services for developping, primarily gitlab, to run in an offline environment. It's not hard to do, it's simply made up of a set of services that consist of a docker-compose and a manual that can be run on an isolated network.

Here are the web services currently available in this repository:

* gitlab
* gitlab-runner (CI)
* redmine
* mattermost

## Getting started
### Setup on both machines
* Install docker
* Install docker-compose

### Work on a machine connected WAN
```
$ docker save -o gitlab-images.tar $(docker-compose config | awk '{if ($1 == "image:") print $2;}')
```


### Work on an isolated machine (host machine)
```
$ docker load -i gitlab-images.tar
$ sudo systemctl stop systemd-resolved 
$ export IP_ADDR=$YOUR_IP_ADDR
$ ./setup.bash
$ docker-compose up -d
```

### Work on isolated machines (client machines)
* Register host machine ip addr as a DNS server (e.g. nmtui)
* Open your browser and access following links:
   1. gitlab: http://gitlab.dev.jp
   1. redmine: http://gitlab.dev.jp:10083
   1. mattermost: http://gitlab.dev.jp:8061

