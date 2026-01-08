FROM ghcr.io/immisterio/lampac:latest

WORKDIR /home

COPY module /home/module

EXPOSE 8000

CMD ["dotnet", "Lampac.dll"]
