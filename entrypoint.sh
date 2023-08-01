#!/bin/sh -l
project_name=$1
db_name=$2
db_host=$3
db_user=$4
db_password=$5
db_port=$6

echo $(ls /github/workspace/ | grep "Services")

dotnet tool install --global dotnet-ef

dotnet ef database update \
--project /github/workspace/Services/$project_name/SubsBase.$project_name.Data/SubsBase.$project_name.Data.csproj \
--startup-project /github/workspace/Services/$project_name/SubsBase.$project_name.API/SubsBase.$project_name.API.csproj \
--context $project_nameContext \
--connection "Host=$db_host;Port=$db_port;Database=$db_name;Username=$db_user;Password=$db_password"