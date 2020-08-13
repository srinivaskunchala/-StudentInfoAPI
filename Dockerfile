FROM openjdk:latest
# Install Java.
# Define default command.
CMD ["bash"]
ARG JAR_FILE=target/StudentInfoAPI-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} StudentInfoAPI-0.0.1-SNAPSHOT.jar
Run sh -c 'touch StudentInfoAPI-0.0.1-SNAPSHOT.jar'
CMD ["echo","Image created"]
CMD ["echo",$JAVA_HOME]
CMD ["ls","/"]
#ADD target/StudentInfoAPI-0.0.1-SNAPSHOT.jar StudentInfoAPI-0.0.1-SNAPSHOT.jar
EXPOSE 8082
CMD exec java -jar StudentInfoAPI-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar" "StudentInfoAPI-0.0.1-SNAPSHOT.jar"]