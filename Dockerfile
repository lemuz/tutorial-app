FROM registry.access.redhat.com/ubi8/openjdk-17

COPY target/quarkus-app/lib/ /deployments/lib/
COPY target/quarkus-app/quarkus-run.jar /deployments/app.jar
COPY target/quarkus-app/app/ /deployments/app/
COPY target/quarkus-app/quarkus/ /deployments/quarkus/

CMD ["java", "-jar", "/deployments/app.jar"]
