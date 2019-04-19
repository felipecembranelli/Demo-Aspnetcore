FROM gcr.io/google-appengine/aspnetcore:2.1
WORKDIR /app
COPY . .
EXPOSE 8080
ENV ASPNETCORE_URLS=http://*:8080
ENTRYPOINT ["dotnet", "Demo-Aspnetcore.dll"]