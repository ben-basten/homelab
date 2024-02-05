# homelab

Version control for a couple of helpful services for around the home.

## Overview

* **[Home Assistant](https://www.home-assistant.io/docs/)**: open source platform to control home devices and services.
* **[Immich](https://immich.app/)**: photo backup solution.
* **[Pi-hole](https://docs.pi-hole.net/)**: DNS server that provides network-wide ad blocking.
* **[Syncthing](https://docs.syncthing.net/)**: syncs files between 2 or more devices realtime, which can be helpful for backups.
* **[Uptime Kuma](https://uptime.kuma.pet/docs/)**: monitoring network services.
* **[Watchtower](https://containrrr.dev/watchtower/)**: automatically checks for container updates on a schedule, and can update and send webhook notifications if they're configured.

## Getting Started

### Environment Variable Templates

There are certain environment variables, like API keys and passwords, that need to be extracted from the Docker `compose.yml` file to prevent them from getting checked into the Git repo.

This directory contains environment variable templates that are easy to copy and fill for easy sharing. To get started, do the following:

1. Every service that has additional environment options will contain a `*.env.template` file in the `services/[service-name]` directory. Navigate to this directory.
2. Copy and rename the file to remove the ".template" suffix: `cp .env.template .env`
3. Fill in the `.env` file with the configurations needed.
4. You're good to go!

### Running an Docker services stack

Creating a stack of services is done in the `compose.*.yaml` files at the root of the project. These files choose which of the services in the `services/` directory are included in the stack, and allows for overriding any use-case specific configurations.

Choose a stack, and run the desired Docker Compose command to get started:

`sudo docker compose -f compose.[stack].yaml <up|down|pull|other-compose-command>`

Alternatively, there are convenience scripts to simplify this process:

`./[stack].sh <up|down|pull|other-compose-command>`

If additional environment variables are required for the stack of services, for example to mount a private volume in the file system to Syncthing, the `--env-file` option can be used. For example:

`./[stack].sh --env-file core.env <up|down|pull|other-compose-command>`

## Formatting

This project uses "[EditorConfig](https://editorconfig.org/)" to maintain consistent formatting.

If this project is being edited using VS Code, consider installing [the extension](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig).
