FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
