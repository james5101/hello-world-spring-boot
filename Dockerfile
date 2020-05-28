FROM openjdk

COPY . /app/

WORKDIR /app

RUN ./gradlew test --no-daemon
RUN ./gradlew bootJar --no-daemon
RUN mv build/libs/*.jar ./hello-world.jar
RUN ls

CMD ["java", "-jar", "./hello-world.jar"]