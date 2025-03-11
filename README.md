# ROS2 Dev Environment

**WARNING NVIDIA PASSTHROUGH HAS NOT BEEN FULLY TESTED YET WITH THE NVIDIA COMPOSE FILE**

A Basic Repo for a Docker focused ROS2 (Jazzy and Humble) development environment with a workspace folder for each versions ROS project files and some tool in the root directory for running everything in the repo.

For GPU and GUI Passthrough you will need to run a command before using the container to allow X11 access for Docker. The command can be found below:
```sh
xhost +local:docker
```
It is strongly recommended to undo this once done with working with container. It's as simple as running:
```sh
xhost -local:docker
```

To create and start all the containers, run this in the root directory of the repo:
```sh
docker compose -f docker-compose.yml up -d --force-recreate
```

To attach to a container run:
```sh
docker attach <CONTAINER_NAME>
```
Eg.
```sh
docker attach ros_humble
```

To exit the container once entered inside type `exit`.


If the container has exited then run:
```sh
docker start ros_humble
```
> you can see if the container is running with `docker ps`
> if it is not in that list but shows with `docker ps -a`, you should now see the `STATUS` is `Exited`

## [docker-compose-full file](./docker-compose-full.yml)
There also additonal containers setup (see below) in the compose stack to aid in working with the environments.
- [Code Server](https://github.com/linuxserver/docker-code-server): VSCode in the browser (Port: [8443](http://localhost:8443))
- [glances](https://github.com/nicolargo/glances): Another "TOP" UI that can be viewed in the broswer (Port: [2000](http://localhost:2000))

### Code Server Servie

[Code Server](https://github.com/linuxserver/docker-code-server) integrate within the stack

#### Github integration
Access the webui at `http://<your-ip>:8443`. For github integration, drop your ssh key in to `/config/.ssh`. Then open a terminal from the top menu and set your github username and email via the following commands
```sh
git config --global user.name "username"
git config --global user.email "email address"
```

## Reporting Issues

When making an Issue use these point as a guideline when writing you issues, as it can help with solving it:
- What has happened?
- Basic System setup (eg. OS, CPU Architecture, GPU) where you judge approriate
- How to recreate
- What you expect