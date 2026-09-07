# maven-_project
practice of git and git hub

FOR .WAR (Dockerfile):

FROM tomcat:9.0
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 7079
CMD ["catalina.sh","run"]


FOR .JAR (Dockerfile):

FROM eclipse-temurin:17-jdk 
COPY target/*.jar app.jar 
EXPOSE 6379 
CMD ["java", "-jar", "app.jar"]




mvn clean package
docker build -t lmsimage .
docker run -d -p 7089:8080 --name lmcontainer lmsimage
docker ps -a
# open http://localhost:7089/ in browser
docker login
docker tag lmsimage <your-dockerhub-username>/lmsimage:latest
docker push <your-dockerhub-username>/lmsimage:latest
