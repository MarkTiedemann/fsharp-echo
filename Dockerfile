FROM microsoft/dotnet:2.0.0-sdk-jessie AS build-stage
COPY . build
WORKDIR build
RUN dotnet restore
RUN dotnet publish -c release

FROM microsoft/dotnet:2.0.0-runtime-jessie
COPY --from=build-stage build/bin/release/netcoreapp2.0/publish app
WORKDIR app
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "echo.dll"]