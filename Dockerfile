FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /home

# копіюємо всі файли з репозиторію
COPY . .

# відкриваємо порт
EXPOSE 8000

# запускаємо Lampac
ENTRYPOINT ["dotnet", "Lampac.dll"]
