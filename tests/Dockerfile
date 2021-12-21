ARG IMAGE_NAME=mcr.microsoft.com/dotnet/sdk:6.0
FROM $IMAGE_NAME AS build

COPY . ./src
WORKDIR /src/tests
RUN dotnet restore
RUN dotnet build --no-restore -c Release Mongo2GoE2ETests.sln
