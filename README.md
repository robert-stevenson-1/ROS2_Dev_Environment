# ROS2 Dev Environment

A Basic Repo for a Docker focused ROS2 (Jazzy and Humble) development environment with a workspace folder for each versions ROS project files and some tool in the root directory for running everything in the repo.

>Make sure to `chmod +m enter_container.sh` so you don't need to used bash to run it.

There also additonal containers setup (see below) in the compose stack to aid in working with the environments.
- [Code Server](https://github.com/linuxserver/docker-code-server)


It is recommended to connect to the ROS2 containers when using the GUI application for passthrough to the host system's display.


## Code Server Servie

[Code Server](https://github.com/linuxserver/docker-code-server) integrate within the stack

### Github integration
Access the webui at `http://<your-ip>:8443`. For github integration, drop your ssh key in to `/config/.ssh`. Then open a terminal from the top menu and set your github username and email via the following commands
```sh
git config --global user.name "username"
git config --global user.email "email address"
```