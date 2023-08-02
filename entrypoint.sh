#!/bin/sh -l
db_project_path=$1
startup_project_path=$2
db_context=$3
db_conn_str=$4

echo $(ls /github/workspace/ | grep "Services")

export PATH="$PATH:/root/.dotnet/tools"

dotnet ef database update \
--project /github/workspace/$db_project_path \
--startup-project /github/workspace/$startup_project_path \
--context $db_context \
--connection "$db_conn_str"