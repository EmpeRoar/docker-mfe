# Check if the container exists
$container = docker ps -aq -f name=remote1-web

if ($container) {
    # Remove the container if it exists
    docker rm remote1-web -f
}

# Build the Docker image
docker build -t remote1-web .

# Run the container
# docker run -p 3200:80 --name remote1-web remote1-web
docker run --network mfe_network -d -p 3200:80 --name remote1-web remote1-web
