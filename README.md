# Docker Images Publisher

A simple bash script to automate the process of tagging and pushing multiple Docker images to Docker Hub.

## Description

This script automates the process of:
1. Tagging local Docker images with your Docker Hub username
2. Pushing these tagged images to Docker Hub

## Prerequisites

- Docker installed on your system
- Docker Hub account
- Already logged in to Docker Hub (`docker login`)
- Local Docker images built and available

## Configuration

The script uses the following configuration:

```bash
USER="pasdev"  # Your Docker Hub username

IMAGES=(       # Array of your local images to be pushed
  crud_master-api-gateway:latest
  crud_master-inventory-app:latest
  crud_master-billing-app:latest
  crud_master-billing-database:latest
  crud_master-inventory-database:latest
)
```

## Usage

1. Make the script executable:
```bash
chmod +x image_publisher.sh
```

2. Run the script:
```bash
./image_publisher.sh
```

The script will:
- Tag each image with your Docker Hub username
- Push each tagged image to Docker Hub


## Customization

To modify the images being pushed:
1. Open the script in a text editor
2. Update the `IMAGES` array with your desired image names and tags
3. Change the `USER` variable to your Docker Hub username


## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request