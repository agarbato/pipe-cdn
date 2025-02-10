FROM debian:12-slim

# Argument for version
ARG VERSION=0.2.4

# Set working directory
WORKDIR /app

# Install curl

# Install package and remove cache
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download the compiled pop binary and place it correctly
RUN curl -L -o /app/pop "https://dl.pipecdn.app/v${VERSION}/pop" \
    && chmod +x /app/pop \
    && ls -lah /app/pop

# Create required directories for volumes
RUN mkdir -p /app/data /app/download_cache

# Define volumes
VOLUME ["/app/data", "/app/download_cache"]

# Expose port 8003
EXPOSE 8003

# Set environment variables with default values
ENV RAM="4gb" \
    PUBKEY="" \
    MAX_DISK="100gb"


CMD /app/pop --ram "${RAM}" --pubKey "${PUBKEY}" --max-disk "${MAX_DISK}"


