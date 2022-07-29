FROM agturley/openjdk:11-rhel8

WORKDIR /app

COPY ./target/*-SNAPSHOT.jar /app/app.jar

USER 20

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]
