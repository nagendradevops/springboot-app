FROM agturley/openjdk:11-rhel8

WORKDIR /app

#RUN file="$(ls -1 /workspace/source/target/sap-0.0.1-SNAPSHOT.jar)" && echo $file
RUN file1="$(pwd)" && echo $file1

COPY ./target/*-SNAPSHOT.jar /app/app.jar

USER 20

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]
