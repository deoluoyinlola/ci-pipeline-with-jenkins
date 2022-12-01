FROM alpine:3.14

WORKDIR /src/java/com/example/

COPY ./pom.xml
RUN mvn
COPY ./app .

EXPOSE 3000
CMD ["mvn", "package"]
