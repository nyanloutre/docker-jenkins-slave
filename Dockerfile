FROM openjdk

MAINTAINER Paul TREHIOU <paul.trehiou@gmail.com>

ENV VERSION=2.2

RUN curl --create-dirs -sSLo /usr/share/jenkins/swarm-client-$VERSION-jar-with-dependencies.jar https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$VERSION/swarm-client-$VERSION-jar-with-dependencies.jar

ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/swarm-client-$VERSION-jar-with-dependencies.jar"]
