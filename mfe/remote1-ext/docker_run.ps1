


# Check if the container exists
$container = docker ps -aq -f name=remote1-ext

if ($container) {
    # Remove the container if it exists
    docker rm remote1-ext -f
}

# Build the Docker image
docker build -t remote1-ext .

# Run the container
# docker run -p 3400:80 --name remote1-ext remote1-ext
docker run --network mfe_network -d -p 3400:80 --name remote1-ext remote1-ext
