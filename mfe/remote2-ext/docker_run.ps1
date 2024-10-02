


# Check if the container exists
$container = docker ps -aq -f name=remote2-ext

if ($container) {
    # Remove the container if it exists
    docker rm remote2-ext -f
}

# Build the Docker image
docker build -t remote2-ext .

# Run the container
# docker run -p 3500:80 --name remote2-ext remote2-ext
docker run --network mfe_network -d -p 3500:80 --name remote2-ext remote2-ext
