# SWE645 Assignment 2

## Project Overview

This project demonstrates the containerization and deployment of a web application using Docker and Kubernetes, with an emphasis on scalability and resiliency. 
The application is deployed on AWS with a Rancher-managed Kubernetes cluster, 
and a CI/CD pipeline is established using Jenkins for automated builds and deployments.

## Web Application Details

This web application, developed as part of SWE645, showcases an assignment focusing on AWS services and dynamic web application development. 

### Dynamic Student Survey Application
The project contains a dynamic web application featuring a Student Survey form. Developed using Eclipse EE and deployed on a Tomcat server running on an Amazon EC2 instance, 
this application collects comprehensive survey data from students. Key functionalities include:
- Required fields for personal and contact information.
- Checkboxes for campus preferences.
- Radio buttons for university interest sources.
- A dropdown for likelihood of recommending the school.
- A raffle entry field for a chance to win a free movie ticket.
- A section for additional comments.

The application emphasizes user interaction and data collection, deployed to enhance the learning experience with AWS cloud services and web application deployment.

## Accessing the Application
The static homepage is accessible on AWS S3, and the dynamic Student Survey application is deployed on an Amazon EC2 instance, so we can access it using the AWS EC2 URL. 

## Key Features

- **Docker Containerization**: The web application is containerized using Docker, ensuring consistent environments for development, testing, and production.
- **Kubernetes Deployment**: Deployed on a Kubernetes cluster managed by Rancher for enhanced scalability and fault tolerance. The deployment includes at least three replicas to ensure high availability.
- **CI/CD Pipeline**: Automated build and deployment processes using Jenkins, integrated with GitHub for continuous integration and delivery.

## Technologies Used

- **HTML/CSS**: Utilized for designing the static class homepage and the Student Survey form, with W3.CSS templates enhancing the UI/UX design.
- **AWS S3**: Hosts the static class homepage, ensuring high availability and reliability.
- **Eclipse EE**: The preferred Integrated Development Environment (IDE) for developing the dynamic Student Survey web application.
- **Apache Tomcat**: Used as the servlet container for deploying and running the web application on both local environments and AWS EC2 instances.
- **AWS EC2**: Hosts the Tomcat server running the dynamic Student Survey application, providing scalable cloud computing capabilities.
- **Bitnami Tomcat Stack on AWS**: A pre-configured, ready-to-launch EC2 instance used for deploying the Tomcat application, ensuring a smooth deployment process.
- **JavaScript**: Employed for client-side scripting to enhance user interaction and validation in the Student Survey form.
- **Docker**: For containerizing the web application, ensuring consistent environments across development, testing, and production.
- **Kubernetes**: Manages containerized application deployment, scaling, and operations on a cluster, enhancing scalability and resiliency.
- **Rancher**: Simplifies Kubernetes cluster management, used for deploying and managing the Kubernetes environment.
- **Jenkins**: Automates the CI/CD pipeline for continuous integration and deployment, integrated with GitHub for source control.
- **GitHub**: Hosts the project repository, enabling version control and collaboration.


## Setup and Deployment Instructions

1. **AWS and Rancher Setup**: Initialize AWS EC2 instances for Rancher and Kubernetes. Install Docker and launch the Rancher server on the Rancher EC2 instance.
2. **Kubernetes Cluster Configuration**: Configure the Kubernetes cluster through Rancher, ensuring the cluster is active and running the required pods.
3. **Docker Hub and Image Preparation**: Build the Docker image for the web application and push it to Docker Hub.
4. **Deployment on Kubernetes**: Deploy the application on Kubernetes using the Docker image from Docker Hub. Ensure replicas are set for scalability.
5. **CI/CD with Jenkins**: Set up Jenkins on a new EC2 instance, and configure it with Docker, JDK, and JRE. Establish the CI/CD pipeline for automated builds and deployments.

## Accessing the Application

The application can be accessed through the NodePort URL provided by the Kubernetes deployment, showcasing the deployed web application's functionality.
