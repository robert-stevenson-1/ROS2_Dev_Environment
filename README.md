# ROS2 Dev Environment

A basic template Repo for a Docker focused ROS2 (Jazzy) development environment with a workspace folder for the ROS project files and some tool in the root directory for running everything.

Make sure to `chmod +m enter_container.sh` so you don't need to used bash to run it.

## Code Server Servie

[Code Server](https://github.com/linuxserver/docker-code-server) integrate within the stack

### Github integration
Access the webui at `http://<your-ip>:8443`. For github integration, drop your ssh key in to `/config/.ssh`. Then open a terminal from the top menu and set your github username and email via the following commands
```sh
git config --global user.name "username"
git config --global user.email "email address"
```