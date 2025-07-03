# Laravel Startup

This repository contains a basic structure to start Laravel projects using Docker.

## How to use

1. Clone this repository and copy the entire structure into your project.

2. Start the containers with Docker Compose:

```sh
docker-compose up --build
```

3. Access the application at [http://localhost:8012](http://localhost:8012).

## What is configured?

## Services

- **api-example**: PHP 8.2 + Nginx container running Laravel.
    - **supervisord**: configuration enabled. If you need to keep any queue running, configure it in `docker\php\supervisord\supervisord.ini`    
    - **redis**: needs to be enabled at lines 36-37 in `Dockerfile.dev`
    - **elastic APM**: needs to be enabled at lines 48-50 in `Dockerfile.dev`
    - **crontab**: needs to be enabled at lines 67-69 in `Dockerfile.dev`
    - **xDebug**: configuration enabled.
    - **db-example**: MySQL database container.
    - connection variables (user, password, etc) are set in the Laravel project's `.env` file

## Debug

Xdebug is already configured for integration with VS Code.

## Docker Containers

Docker Containers is already configured for integration with VS Code. Verify `.devcontainer.json`

---

Ready-to-use structure for fast development with Laravel, Docker, and VS Code.