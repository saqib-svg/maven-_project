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








uml

UML (Unified Modeling Language) is a standard visual language used to design, visualize, and document a software system.

Instead of explaining a system only with text/code, UML uses diagrams to show things like:

Who uses the system
What the system does
How objects interact
How the system is structured
How the system behaves over time
Types of UML Diagrams

UML has 14 standard diagrams, divided into 2 main categories:

1. Structural Diagrams

Show the static structure of the system — what the system is made of.

2. Behavioral Diagrams

Show the behavior/dynamic activities of the system — what the system does.

1. Structural Diagrams — 7 types
Diagram	What it shows
Class Diagram ⭐	Classes, attributes, methods, and relationships
Object Diagram	Objects/instances of classes at a particular time
Component Diagram	Software components/modules and their dependencies
Deployment Diagram	Hardware/server nodes and where software is deployed
Package Diagram	Groups packages/modules and their relationships
Composite Structure Diagram	Internal structure of a class/component
Profile Diagram	Extends/customizes UML for specific domains
Most important: Class Diagram

Example:

Student
----------------
- id
- name
----------------
+ register()
+ login()

It tells us what classes exist and how they are related.

2. Behavioral Diagrams — 7 types
Diagram	What it shows
Use Case Diagram ⭐	Users and the functions they perform
Activity Diagram ⭐	Workflow/process of the system
Sequence Diagram ⭐	Interaction between objects in time order
State Machine Diagram	Different states of an object
Communication Diagram	Communication between objects
Interaction Overview Diagram	Overall flow of interactions
Timing Diagram	Changes in object states with respect to time
The 3 you should especially prepare

For your type of practical/exam questions, focus strongly on:

1. Use Case Diagram

Shows:

Who → does what

Example for Library System:

Student ───> Login
Student ───> Search Book
Student ───> Issue Book

Librarian ───> Add Book
Librarian ───> Remove Book

Actor = user/external system

2. Class Diagram

Shows the structure of the system:

Student
   |
   | borrows
   ↓
  Book

with attributes and methods.

3. Sequence Diagram

Shows who communicates with whom and in what order.

Example:

Student → Login Page → Server → Database
Student ← Login Page ← Server ← Database

It focuses on the sequence of messages over time.

4. Activity Diagram

Shows the workflow:

Start
  ↓
Enter Login
  ↓
Check Credentials
  ↓
Valid?
 /   \
Yes   No
 ↓     ↓
Home  Error
 ↓
End
🧠 Easy way to remember

Think:

Structural = WHAT the system IS

Behavioral = WHAT the system DOES
