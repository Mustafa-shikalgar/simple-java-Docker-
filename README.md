
# Simple Java Docker Application

A basic Java application containerized with Docker that prints the current date and time.

## Prerequisites

- Docker installed on your system
- Java 21 (included in the Docker image)

## Building the Docker Image

To build the Docker image, run:

```bash
docker build -t simple-java-app .
```

## Running the Container

To run the container and see the output:

```bash
docker run --rm simple-java-app
```

## Code Explanation

- **Main.java**: Imports java.util.* and prints the current system date/time using `new Date()`
- **Dockerfile**: Uses eclipse-temurin:21-jdk as the base image, compiles the Java code, and runs it

## File Structure

```
.
├── Dockerfile      # Docker configuration file
├── Main.java     # Java source code
└── README.md    # This file
```

## How It Works

1. The Dockerfile pulls the eclipse-temurin:21-jdk base image
2. Creates a working directory at /app
3. Copies Main.java into the container
4. Compiles the Java code using javac
5. Runs the compiled class using java Main
