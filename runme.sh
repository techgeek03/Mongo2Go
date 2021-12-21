#!/bin/bash

printf "\e[32;1m%s\n" '###### Pull images ######'
docker compose -f tests/docker-compose.yaml pull
printf "\e[32;1m%s\n" '###### Build images ######'
docker compose -f tests/docker-compose.yaml build

printf "\e[32;1m%s\n" '###### Run Monog2Go lates offical verion and local repo code base on bionic ######'
printf "\e[32;1m%s\n" '###### docker run -it --rm tests_mongo2go-lates-version-bionic dotnet test --no-build -c Release Mongo2GoE2ETests.sln ######'
docker run -it --rm tests_mongo2go-lates-version-bionic dotnet test --no-build -c Release Mongo2GoE2ETests.sln

printf "\e[32;1m%s\n" '###### Run Monog2Go lates offical verion and local repo code base on focal ######'
printf "\e[32;1m%s\n" '###### docker run -it --rm tests_mongo2go-lates-version-focal dotnet test --no-build -c Release Mongo2GoE2ETests.sln ######'
docker run -it --rm tests_mongo2go-lates-version-focal dotnet test --no-build -c Release Mongo2GoE2ETests.sln

printf "\e[32;1m%s\n" '###### Run Monog2Go lates offical verion and local repo code base with NUGET_PACKAGES env specified on bionic ######'
printf "\e[32;1m%s\n" '###### docker run -it --rm tests_mongo2go-lates-version-with-env-specified-bionic dotnet test --no-build -c Release Mongo2GoE2ETests.sln ######'
docker run -it --rm tests_mongo2go-lates-version-with-env-specified-bionic dotnet test --no-build -c Release Mongo2GoE2ETests.sln

printf "\e[32;1m%s\n" '###### Run Monog2Go lates offical verion and local repo code base with NUGET_PACKAGES env specified on focal ######'
printf "\e[32;1m%s\n" '###### docker run -it --rm tests_mongo2go-lates-version-with-env-specified-focal dotnet test --no-build -c Release Mongo2GoE2ETests.sln ######'
docker run -it --rm tests_mongo2go-lates-version-with-env-specified-focal dotnet test --no-build -c Release Mongo2GoE2ETests.sln