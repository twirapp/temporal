#!/bin/sh

export DB=postgresql
export DB_PORT=5432
export DYNAMIC_CONFIG_FILE_PATH=config/dynamicconfig/development-sql.yaml
export POSTGRES_SEEDS=postgres
export POSTGRES_DB=temporal
export POSTGRES_PWD=$(egrep  -v '^#' /run/secrets/twir_postgres_password)
export POSTGRES_USER=$(egrep  -v '^#' /run/secrets/twir_postgres_user)

source /docker-entrypoint.sh