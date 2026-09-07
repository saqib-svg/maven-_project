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





srs

SRS — Things to include
Title / Project Name
Example: Library Management System
Abstract / Introduction
4–6 lines explaining what the system is, why it is needed, and what it does.
Objectives
Main goals of the system.
Example: automate book issue/return, manage users, reduce manual work.
Functional Requirements (FR)
What the system should do.
Write 5–10 points.
Example:
User can register/login.
Admin can add/delete books.
User can search books.
System can issue and return books.
System generates reports.
Non-Functional Requirements (NFR)
How the system should perform.
Examples:
Performance
Security
Reliability
Usability
Scalability
Availability
User / System Requirements
Identify users/actors.
Example: Admin, Student, Librarian
Mention what each user can do.
Hardware & Software Requirements
Hardware: RAM, processor, storage.
Software: OS, Java, MySQL, browser, etc.
System Constraints / Assumptions
Internet/network requirements.
Authorized users only.
Required software must be installed.
Use Cases / System Features (if asked or if you have space)
Login
Registration
Search
Add/update/delete
Generate reports
Logout
