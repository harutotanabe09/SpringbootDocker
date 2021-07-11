FROM openjdk:11-jre-slim-buster
ENV JAVA_OPTS = "-Dspring.profiles.active=dev"
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "sh", "-c", "java ${JAVA_OPTS} -jar /app.jar" ]