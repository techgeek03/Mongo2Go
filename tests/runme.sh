#!/bin/bash

printf "\e[32;1m%s\n" '###### Pull images ######'
docker compose pull
printf "\e[32;1m%s\n" '###### Build images ######'
docker compose build
printf "\e[32;1m%s\n" '###### Monog2Go lates offical verion on bionic ######'
docker run -it --rm tests_mongo2go-lates-version-bionic dotnet test --no-build -c Release Mongo2GoE2ETests.sln
printf "\e[32;1m%s\n" '###### Monog2Go lates offical verion on focal ######'
docker run -it --rm tests_mongo2go-lates-version-focal dotnet test --no-build -c Release Mongo2GoE2ETests.sln
printf "\e[32;1m%s\n" '###### Monog2Go lates offical verion with NUGET_PACKAGES env specified on bionic ######'
docker run -it --rm tests_mongo2go-lates-version-with-env-specified-bionic dotnet test --no-build -c Release Mongo2GoE2ETests.sln
printf "\e[32;1m%s\n" '###### Monog2Go lates offical verion with NUGET_PACKAGES env specified on focal ######'
docker run -it --rm tests_mongo2go-lates-version-with-env-specified-focal dotnet test --no-build -c Release Mongo2GoE2ETests.sln