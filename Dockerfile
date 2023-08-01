FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN dotnet tool install --global dotnet-ef

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
