#pull A  base image which gives all the necessary dependencies to run a java application
FROM eclipse-temurin:21-jdk

#create a folder in the container to hold the application code
WORKDIR /app

#copy the application code from the host to the container
COPY /Main.java /app/Main.java

#compile the java code to bytecode
RUN javac Main.java

CMD ["java", "Main"]