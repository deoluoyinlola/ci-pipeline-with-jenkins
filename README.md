## cicd-pipeline-with-jenkins-and-terraform
Build automation in Jenkins and Infrastructure as code with terraform

## Why I use Jenkins and Terraform

- **Jenkins**: Jenkins is an open-source solution comprising an automation server to enable continuous integration and continuous delivery (CI/CD), automating the various stages of software development such as build, test, and deployment.
I find out that Jenkins is not only extensible but also has a thriving plugin ecosystem. Some of the possible steps that can be performed using Jenkins are: Software build using build systems such as Gradle, Maven, and more. 
- **Terraform**: With Terraform’s declarative approach, the code always represents the latest state of your infrastructure. At a glance, I can determine what’s currently deployed and how it’s configured, without having to worry about history or timing. This also makes it easy to create reusable code, since I don’t need to manually account for the current state of the world.

## Why not to use - Limitation
- **Jenkins**: Jenkins doesn't allow server-to-server federation, which can cause performance issues in large-scale environments.
- **Terraform**: Security of “state files” is a concern because managing the resources is impossible if the terraform state is ever lost. It's complicated while using a local files. It does not support any revert function for wrong/invalid changes to resources.

## Description
I use Jenkins for build automation and Terraform for infrastructure as code. The whole idea is to practically show how ci/cd pipeline works with Jenkins and Terraform, which is the core of DevOps culture.

## Documentation
Documentation - Jenkins and Terraform, steps followed and how I arrived at each are well written inside docs directory. The directory also holds some of the projects assets(images and pictures)

## Useful tools
- [aws](https://aws.amazon.com/) - Amazon Web Services (AWS) is the world’s most comprehensive and broadly adopted cloud platform, offering over 200 fully featured services from data centers globally.
- [jenkins](https://www.jenkins.io/) - my main development tool
- [terraform](https://www.terraform.io/) - terraform itself, the second main development tool: `tf install`

![design](docs/assets/designs.svg)