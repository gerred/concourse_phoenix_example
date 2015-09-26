#!/bin/bash

apt-get update && apt-get install postgresql -y && service postgresql start

sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password 'postgres';"

mix deps.get
mix ecto.create
MIX_ENV=test mix test
