#!/bin/bash

export PGPASSWORD='node_password';

database="monstersdb"

echo "Configuring database: $database"

/Library/PostgreSQL/13/bin/dropdb -U node_user monstersdb
/Library/PostgreSQL/13/bin/createdb -U node_user monstersdb

/Library/PostgreSQL/13/bin/psql -U node_user monstersdb < ./bin/sql/monsters.sql

echo "$database configured"