terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull the nginx image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Run a container from the image
resource "docker_container" "nginx" {
  name  = "nginx_container"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8080
  }
}
