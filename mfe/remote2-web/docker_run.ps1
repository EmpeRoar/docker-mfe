# Check if the container exists
$container = docker ps -aq -f name=remote2-web

if ($container) {
    # Remove the container if it exists
    docker rm remote2-web -f
}

# Build the Docker image
docker build -t remote2-web .

# Run the container
# docker run -p 3200:80 --name remote2-web remote2-web
docker run --network mfe_network -d -p 3300:80 --name remote2-web remote2-web
