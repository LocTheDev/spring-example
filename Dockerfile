FROM amazoncorretto:8

COPY --chown=777 --chmod=777 . .

RUN ./mvnw package

EXPOSE 8080

CMD java -jar ./target/docker-example-1.1.3.jar