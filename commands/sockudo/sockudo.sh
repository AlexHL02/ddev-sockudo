#!/usr/bin/env sh
#ddev-generated
## Description: Start the Sockudo WebSocket server
## Usage: sockudo
## Example: ddev sockudo

export HOST=${SOCKUDO_HOST:-0.0.0.0}
export PORT=${SOCKUDO_PORT:-6001}

CONFIG_FILE=/mnt/ddev_config/sockudo/config.json

# If the project ships a custom .ddev/sockudo/config.json, let it take over
# app/adapter/cache/queue configuration. HOST/PORT are still forced above so
# the server keeps listening where ddev's routing expects it.
if [ -f "$CONFIG_FILE" ]; then
  echo "Using custom Sockudo configuration: $CONFIG_FILE"
  exec sockudo --config "$CONFIG_FILE"
fi

export DATABASE_REDIS_HOST=${SOCKUDO_REDIS_HOST:-redis}
export DATABASE_REDIS_PORT=${SOCKUDO_REDIS_PORT:-6379}
export DATABASE_REDIS_DB=${SOCKUDO_REDIS_DB:-0}
export DATABASE_REDIS_PASSWORD=${SOCKUDO_REDIS_PASSWORD:-}
export DATABASE_REDIS_KEY_PREFIX=sockudo:
export ADAPTER_DRIVER=redis
export CACHE_DRIVER=redis
export QUEUE_DRIVER=redis
export RATE_LIMITER_DRIVER=redis
export APP_MANAGER_DRIVER=memory
export SOCKUDO_DEFAULT_APP_ID=${SOCKUDO_APP_ID:-app-id}
export SOCKUDO_DEFAULT_APP_KEY=${SOCKUDO_APP_KEY:-app-key}
export SOCKUDO_DEFAULT_APP_SECRET=${SOCKUDO_APP_SECRET:-app-secret}
export SOCKUDO_DEFAULT_APP_ENABLED=true
export SOCKUDO_ENABLE_CLIENT_MESSAGES=true
export METRICS_ENABLED=${SOCKUDO_METRICS_ENABLED:-false}

exec sockudo
