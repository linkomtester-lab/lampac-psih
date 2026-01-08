FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /home

# завантажуємо готовий Lampac
ADD https://github.com/immisterio/Lampac/releases/latest/download/linux-x64.tar.gz /tmp/lampac.tar.gz

RUN tar -xzf /tmp/lampac.tar.gz -C /home \
    && rm /tmp/lampac.tar.gz \
    && chmod +x /home/Lampac

EXPOSE 8000

CMD ["/home/Lampac"]
