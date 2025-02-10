#!/bin/bash

export DB=temporal-postgres
export DB_PORT=5432
export DYNAMIC_CONFIG_FILE_PATH=config/dynamicconfig/development-sql.yaml
export POSTGRES_SEEDS=postgres
export POSTGRES_DB=temporal
export POSTGRES_PWD=temporal
export POSTGRES_USER=temporal

source /etc/temporal/entrypoint.sh