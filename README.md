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

To change the Sockudo version:

```bash
ddev dotenv set .ddev/.env.sockudo --sockudo-version="v4.5.1"
ddev add-on get AlexHL02/ddev-sockudo
ddev restart
```

Make sure to commit the `.ddev/.env.sockudo` file to version control.

All customization options (use with caution):

| Variable | Flag | Default |
| -------- | ---- | ------- |
| `SOCKUDO_DOCKER_IMAGE` | `--sockudo-docker-image` | `ubuntu:22.04` |
| `SOCKUDO_VERSION` | `--sockudo-version` | `v4.5.1` |
| `SOCKUDO_HOSTNAME` | `--sockudo-hostname` | `sockudo` |
| `SOCKUDO_HOST` | `--sockudo-host` | `0.0.0.0` |
| `SOCKUDO_PORT` | `--sockudo-port` | `6001` |
| `SOCKUDO_HTTPS_PORT` | `--sockudo-https-port` | `6002` |
| `SOCKUDO_APP_ID` | `--sockudo-app-id` | `app-id` |
| `SOCKUDO_APP_KEY` | `--sockudo-app-key` | `app-key` |
| `SOCKUDO_APP_SECRET` | `--sockudo-app-secret` | `app-secret` |
| `SOCKUDO_REDIS_HOST` | `--sockudo-redis-host` | `redis` |
| `SOCKUDO_REDIS_PORT` | `--sockudo-redis-port` | `6379` |
| `SOCKUDO_REDIS_DB` | `--sockudo-redis-db` | `0` |
| `SOCKUDO_METRICS_ENABLED` | `--sockudo-metrics-enabled` | `false` |

## Credits

**Contributed and maintained by [@AlexHL02](https://github.com/AlexHL02)**
