# Check if the container exists
$container = docker ps -aq -f name=shell-web

if ($container) {
    # Remove the container if it exists
    docker rm shell-web -f
}

# Build the Docker image
docker build -t shell-web .

# Run the container
# docker run -p 4200:80 --name shell-web shell-web
docker run  --network mfe_network -d -p 4200:80 --name shell-web shell-web
