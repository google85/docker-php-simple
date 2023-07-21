## Simple PHP Docker environment
#### using [google85/php-fpm](https://hub.docker.com/repository/docker/google85/php-fpm) DockerHub image

- contains:
    - PHP `8.1.18`  [can be overrided/specified in `.env` file]
    - PHP `pdo_mysql` extension
    - composer
    - local development server

- customize `.env` file as you like
- start:
    ```bash
    make start
    ```
