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
