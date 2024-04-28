FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine

RUN dotnet tool install --global dotnet-ef --version 8.0.4

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
