
# Docker Notes for Learning and Interview Preparation

## 1. Introduction and History

Docker was introduced in March 2013 by Solomon Hykes as an internal project at dotCloud (a PaaS company). It was later open-sourced and has since become the industry standard for containerization. The Docker logo—a whale carrying shipping containers—symbolizes the ease of shipping code across environments, just like cargo is transported across seas.

---

## 2. What is Docker?

Docker is an open-source platform designed to automate the deployment, scaling, and operation of applications using containers. Containers are lightweight, portable, and self-sufficient units that include everything needed to run a piece of software, including code, runtime, system tools, and libraries.

---

## 3. Why Do We Need Docker?

* **Environment Consistency**: Runs the same in development, testing, and production.
* **Portability**: Containers can run on any system that supports Docker.
* **Isolation**: Applications run in their own containers without interfering with each other.
* **Efficiency**: Uses fewer resources than traditional virtual machines.
* **Fast Deployment**: Containers start quickly and simplify application delivery.

---

## 4. How Docker is Used in Industry

* **Microservices**: Break large apps into smaller services for independent development.
* **CI/CD Pipelines**: Automate testing and deployment of applications.
* **Cloud-Native Applications**: Easily scalable and managed in cloud environments.
* **Dev/Test Environments**: Replicate production-like environments for developers.
* **Legacy App Modernization**: Run older apps in modern infrastructure using containers.

---

## 5. Operations Possible with Docker

* Running containers
* Managing container lifecycle
* Creating, tagging, pushing, and pulling images
* Networking between containers
* Mounting volumes for persistent storage
* Container inspection and logging
* Exporting/importing containers and images

---

## 6. Docker Architecture

### Components:

* **Docker Client**: CLI tool that interacts with the Docker daemon.
* **Docker Daemon**: Background service that manages Docker images, containers, networks, etc.
* **Docker Images**: Immutable templates used to create containers.
* **Docker Containers**: Lightweight and executable packages of software.
* **Docker Registries**: Repositories (like Docker Hub) to store and share images.

---

## 7. Installation

Refer to the official documentation: [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

### Ubuntu Example:

```bash
sudo apt update
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
```

---

## 8. Getting Started with Docker

```bash
# Create first container
docker run hello-world

# List containers
docker ps           # running
docker ps -a        # all

# Remove container
docker rm <container_id>
```

---

## 9. Entering Inside a Running Container

```bash
docker exec -it <container_id> /bin/bash
```

This command allows you to interact with a container’s shell.

---

## 10. Container Modes

* **Interactive Mode (`-it`)**: Opens an interactive shell session.

```bash
docker run -it ubuntu /bin/bash
```

* **Detached Mode (`-d`)**: Runs the container in the background.

```bash
docker run -d nginx
```

---

## 11. Container Inspect

Used to retrieve detailed information about a container (e.g., configuration, network settings).

```bash
docker inspect <container_id>
```

---

## 12. Viewing Container Processes

```bash
docker top <container_id>
```

Displays running processes inside the container.

---

## 13. Common Container Operations

```bash
# Port Mapping
docker run -p 8080:80 nginx

# Rename Container
docker rename old_name new_name

# Restart Container
docker restart <container_id>

# Exec Command
docker exec -it <container_id> /bin/bash
```

---

## 14. Other Useful Commands

```bash
# Attach to running container
docker attach <container_id>

# Kill a container
docker kill <container_id>

# Wait until container stops
docker wait <container_id>

# Pause/unpause processes in container
docker pause <container_id>
docker unpause <container_id>

# Prune unused containers
docker container prune

# View exposed ports
docker port <container_id>
```

---

## 15. Working with Files in Containers

```bash
# View changes
docker diff <container_id>

# Copy file to container
docker cp file.txt <container_id>:/app
```

---

## 16. Export and Import Containers

```bash
# Export container filesystem
docker export <container_id> > container.tar

# Import container back
docker import container.tar
```

---

## 17. Creating Docker Image from Running Container

```bash
docker commit <container_id> my-custom-image
```

This creates a new image from the current state of a container.

---

## 18. Working with Docker Hub

```bash
# Tag image
docker tag my-image username/my-image:latest

# Login
docker login

# Push image
docker push username/my-image:latest

# Pull image
docker pull username/my-image:latest
```

---

## 19. Docker Image and Container Management

```bash
# Inspect image
docker image inspect <image>

# Remove image
docker rmi <image_id>

# List images
docker images

# View image history
docker history <image>

# View container logs
docker logs <container_id>
```

---

## 20. Save/Load vs Export/Import

```bash
# Save Docker image
docker save -o my_image.tar my-image

# Load Docker image
docker load -i my_image.tar
```

**Differences:**

* `docker save/load`: Used for images
* `docker export/import`: Used for containers

---

## 21. Layered Architecture in Docker

Each Docker image is composed of layers. Each instruction in a Dockerfile (e.g., `RUN`, `COPY`) creates a new layer. Layers are cached and shared across containers, reducing image size and improving efficiency.

---

## 22. Dockerfile Basics

```Dockerfile
# Basic Dockerfile Example
LABEL maintainer="jayesh@example.com"
RUN apt update && apt install nginx -y
ENV APP_ENV=production
WORKDIR /app
```

---

## 23. ADD vs COPY vs USER

```Dockerfile
COPY ./src /app
ADD  https://example.com/file.zip /file.zip
USER 1001
```

**COPY** is used to copy local files, **ADD** can fetch from URLs and extract archives. **USER** sets the user under which the container runs.

---

## 24. CMD Instruction

```Dockerfile
CMD ["nginx", "-g", "daemon off;"]
```

Defines the default command executed when the container starts.

---

## 25. EXPOSE and SSH Container Example

```Dockerfile
# Dockerfile Example to Enable SSH
FROM ubuntu
RUN apt update && apt install -y openssh-server
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
```

This sets up a basic container running SSH on port 22.

---

