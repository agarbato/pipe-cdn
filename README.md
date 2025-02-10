# Pipe Network CDN

## Overview

Docker version of pop node.
Read the doc [here](https://docs.pipe.network/devnet-2)

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Pop node requirements:

  System Requirements   
  Linux   
  Minimum 4GB RAM (configurable), more the better for higher rewards   
  At least 100GB free disk space (configurable). 200-500GB is a sweet spot   
  Internet connectivity available 24/7   

## Getting Started

1. Clone the repository:
   ```sh
   git clone https://github.com/agarbato/pipe-cdn
   cd pipe-cdn
   ```
2.  Change docker-compose envs to add your wallet pubKey, change default ram/disk.

3. Start the services using Docker Compose:
   ```sh
   docker-compose up -d
   ```

4. Verify that everything is running:
   ```sh
   docker-compose ps
   ```

5. Run pop commands:
   ```sh
   docker-compose exec pop_service /app/pop --status
   ```

## Stopping the Services

To stop the running services:
```sh
   docker-compose down
```

## Troubleshooting

- If you encounter issues, check the logs:
  ```sh
  docker-compose logs -f
  ```
- Ensure that all required dependencies are installed.

