#!/bin/bash

mix do deps.get, compile --force
MIX_ENV=prod mix release
mix run -e "" # Hack to echo version without compiling a bunch of source files.
APP_VERSION=$(mix run -e "IO.puts(Mix.Project.config |> Keyword.get(:version))")
cp rel/concourse_phoenix_example/releases/$APP_VERSION/concourse_phoenix_example.tar.gz concourse_phoenix_example_$APP_VERSION.tar.gz
ls -al .
