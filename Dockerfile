FROM openjdk:11.0.7-jre-slim-buster
ADD  target/spring-petclinic-2.5.0-SNAPSHOT.jar  spring-petclinic-2.5.0-SNAPSHOT.jar
ADD  src/main/resources/application.properties  my-application.properties
EXPOSE 8221
ENTRYPOINT ["java","-jar","/spring-petclinic-2.5.0-SNAPSHOT.jar" ,"-Dspring-boot.run.profiles=mysql"]

 
#delete all local image with kimlongap : docker rmi -f $(docker images -a | grep kimlongap |  awk {'print $3'})

### build image & pust to docker repo
# docker build -t kimlongap/dockertest01:spring-petclinic .
# docker push kimlongap/dockertest01:price-service 

### run docker 
# docker run --name spring-petclinic --rm --publish 8220:8220 kimlongap/dockertest01:spring-petclinic

#login to container : docker exec -it <container name> /bin/bash 