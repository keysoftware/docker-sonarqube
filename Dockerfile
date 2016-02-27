# Debian: SonarQube 5.1 + Maven

FROM sonarqube:5.1

RUN apt-get update && apt-get install -y maven

EXPOSE 9000 9092
