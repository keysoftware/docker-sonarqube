## Dockerfile: Debian - SonarQube 5.1 (+ Maven)

[![Build Status](https://travis-ci.org/keysoftware/docker-sonarqube.svg?branch=master)](https://travis-ci.org/keysoftware/docker-sonarqube)

*Docker Pull Command*
- `docker pull keysoftware/sonarqube`

### Usage

See `Makefile`.

#### SonarQube

Access the SonarQube dashboard: `http://<docker-machine ip>:4985/`.

*Default login:*

    Username: admin
    Password: admin

*Analyse a project:*

    $ mvn sonar:sonar
