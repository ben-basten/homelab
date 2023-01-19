# Environment Variable Templates

There are certain environment variables, like API keys and passwords, that need to be extracted from the Docker `compose.yml` file to prevent them from getting checked into the Git repo.

This directory contains environment variable templates that are easy to copy and fill for easy sharing.

## Setup instructions

1. Copy the desired `*.env.template` file into the root directory of the repo
2. Rename the file to remove the ".template" suffix.
    * For example, `mv pihole.env.template pihole.env`
3. Verify that the `env_file` property in `compose.yml` references the correct `*.env` environment variable file.
4. You're good to go!