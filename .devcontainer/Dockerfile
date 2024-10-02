FROM ubuntu:22.04

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Install .NET SDK, curl, git, build-essential, and Docker dependencies
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    && apt-get install -y dotnet-sdk-8.0 \
    && apt-get install -y git build-essential \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @angular/cli@18.1.0 \
    && npm install -g vsts-npm-auth

# Install Docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

# Set up Docker to run without sudo
RUN groupadd docker && usermod -aG docker root

# Set the default command
CMD ["echo", "Angular 18, dotnet and Docker installed"]
