# pypi-deployer
Docker image to deploy libraries to pypi


## Usage with circle-ci
```yaml
version: 2
jobs:
    deploy:
        docker:
            - image: xmorse/deploy-pypi
        steps:
            - checkout
            - run: USERNAME=$PYPI_USERNAME PASSWORD=$PYPI_PASSWORD /deploy
```

## Usage with docker-compose
```yaml
services:
    deploy:
        image: xmorse/deploy-pypi        
        command: sh -c "cd /src && /deploy"
        environment:
             USERNAME: xxx
             PASSWORD: xxx
        volumes:
             ./:/src
```

