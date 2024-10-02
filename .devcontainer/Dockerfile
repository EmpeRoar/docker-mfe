# Use the official Ubuntu 22.04 as a base image
FROM ubuntu:22.04

# Install .NET SDK
RUN apt-get update && apt-get install -y dotnet-sdk-8.0

# Install necessary tools and Node.js
RUN apt-get update && apt-get install -y curl git build-essential \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @angular/cli@18.1.0

# Install Docker
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

# RUN groupadd docker && usermod -aG docker root

# Install PowerShell
RUN apt-get update && apt-get install -y wget \
    && wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y powershell

# Set the default command
CMD ["echo", "Angular 18 and Docker installed"]
