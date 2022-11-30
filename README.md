## Description
Build automation in Jenkins. Using multi-branch pipeline while changes in Jenkinsfile will be trigger by GitHub webhook. The whole idea is to demostrate how continous integration pipeline works with Jenkins, which is the core of DevOps culture.
![design](docs/assets/designs.svg)

## Why Jenkins
I find out that Jenkins is not only extensible but also has a thriving plugin ecosystem. Some of the possible steps that can be performed using Jenkins are: Software build using build systems such as Gradle, Maven, and more. 

## Limitation
Jenkins doesn't allow server-to-server federation, which can cause performance issues in large-scale environments.

## Project Set Up and Installation
There are few possible ways to run this project. But will prefer you to follow these steps;
### Enter the project directory
Forked and clone the repository into your machine. Change directory into your desired directory by running the command; `git clone https://github.com/deoluoyinlola/ci-pipeline-with-jenkins`

### Install required packages

## Documentation
To better understand this project, I am documenting every steps, project code and every command line arguments that I used. For this, I have created a separate README file inside the docs directory at the root directory for this project, the directory also holds some of the project assets(images and pictures)

## Useful tools
- [aws](https://aws.amazon.com/) - cloud platform, offering over 200 fully featured services from data centers globally.
- [VSCode](https://code.visualstudio.com/) - preferred IDE 
- [jenkins](https://www.jenkins.io/) - the main ci tool


