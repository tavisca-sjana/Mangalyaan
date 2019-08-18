FROM mcr.microsoft.com/dotnet/core/sdk:1.1

WORKDIR /app

COPY /Mangalyaan/bin/Release/PublishOutput/  /app

ENTRYPOINT dotnet Mangalyaan.dll

