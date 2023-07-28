## Simple PHP Docker environment
#### using [google85/php-fpm](https://hub.docker.com/repository/docker/google85/php-fpm) DockerHub image

- contains:
    - PHP-FPM from image (`8.1.18` or other specified as 'tag' in `.env` file), with their respective extensions
    - PHP `pdo_mysql` extension
    - composer
    - local development server

- customize `.env` file as you like
- add your `htdocs`
- start:
    ```bash
    make start
    ```
