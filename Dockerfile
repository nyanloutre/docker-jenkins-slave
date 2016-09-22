FROM openjdk:alpine

MAINTAINER Paul TREHIOU <paul.trehiou@gmail.com>

RUN apk -U add docker curl

RUN curl --create-dirs -sSLo /usr/share/jenkins/swarm-client-2.2-jar-with-dependencies.jar https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/2.2/swarm-client-2.2-jar-with-dependencies.jar

ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/swarm-client-2.2-jar-with-dependencies.jar"]
