FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN dotnet tool install --global dotnet-ef --version 6.0.11

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
