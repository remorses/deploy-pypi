# pypi-deployer
Docker image to deploy libraries to pypi


## Usage with circle-ci
```yaml
version: 2
jobs:
    deploy:
        docker:
            - image: xmorse/pypi-deploy
        environment:
            USERNAME: $PYPI_USERNAME
            PASSWORD: $PYPI_PASSWORD
        steps:
            - checkout
            - run: /deploy
```

## Usage with docker-compose
```yaml
services:
    deploy:
        image: xmorse/pypi-deploy
        command: sh -c "cd /src && /deploy"
        environment:
             USERNAME: xxx
             PASSWORD: xxx
        volumes:
             ./:/src
```

