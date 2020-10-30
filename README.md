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


### Work on an isolated machine (target machine)
```
$ docker load -i gitlab-images.tar
```
