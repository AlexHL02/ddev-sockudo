[![add-on registry](https://img.shields.io/badge/DDEV-Add--on_Registry-blue)](https://addons.ddev.com)
[![tests](https://github.com/AlexHL02/ddev-sockudo/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/AlexHL02/ddev-sockudo/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/AlexHL02/ddev-sockudo)](https://github.com/AlexHL02/ddev-sockudo/commits)
[![release](https://img.shields.io/github/v/release/AlexHL02/ddev-sockudo)](https://github.com/AlexHL02/ddev-sockudo/releases/latest)

# DDEV Sockudo

## Overview

This add-on integrates Sockudo into your [DDEV](https://ddev.com/) project.

## Installation

```bash
ddev add-on get AlexHL02/ddev-sockudo
ddev restart
```

After installation, make sure to commit the `.ddev` directory to version control.

## Usage

| Command | Description |
| ------- | ----------- |
| `ddev describe` | View service status and used ports for Sockudo |
| `ddev logs -s sockudo` | Check Sockudo logs |

## Advanced Customization

To change the Docker image:

```bash
ddev dotenv set .ddev/.env.sockudo --sockudo-docker-image="ddev/ddev-utilities:latest"
ddev add-on get AlexHL02/ddev-sockudo
ddev restart
```

Make sure to commit the `.ddev/.env.sockudo` file to version control.

All customization options (use with caution):

| Variable | Flag | Default |
| -------- | ---- | ------- |
| `SOCKUDO_DOCKER_IMAGE` | `--sockudo-docker-image` | `ddev/ddev-utilities:latest` |

## Credits

**Contributed and maintained by [@AlexHL02](https://github.com/AlexHL02)**
