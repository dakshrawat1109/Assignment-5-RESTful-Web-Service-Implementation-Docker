FROM openjdk:8-jdk-alpine
RUN mkdir -p /etc/shows/
COPY data.json /etc/shows/data.json
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/spring-shows-cast-0.0.1-SNAPSHOT.jar dockerspringwebservicemaster.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar dockerspringwebservicemaster.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar dockerspringwebservicemaster.jar
