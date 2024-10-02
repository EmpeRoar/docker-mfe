```
docker ps --filter "status=running" --filter "status=restarting" --filter "status=paused"
docker network create mfe_network
docker network ls
```

```
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y dotnet-sdk-8.0
RUN apt-get update && apt-get install -y curl git build-essential \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @angular/cli@18.1.0
CMD ["echo", "Angular 18 installed"]
```