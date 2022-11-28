

## Table of contents

<!-- TOC -->
* [cicd pipeline with jenkins](#cicd-pipeline-with-jenkins)
  * [Setting up Jenkins](#setting-up-jenkins)
* [iac with terraform](#terraform)
  * [Setting up Terraform](#setting-up-terraform)
<!-- TOC -->

# cicd pipeline with jenkins

This diagram describes the planned pipeline:
![cicd-with-jenkins](assets/cicd-with-jenkins.svg)

Under Jenkins, these are my plans: 
- Setting up Jenkins Server on AWS Cloud
  - Install Jenkins using docker
  - Install Docker as my runtime environment
  - Accessing Jenkins Application
  - Initialise Jenkins
  - Create admin user
## Setting up Jenkins
- I am going to set up Jenkins server on AWS cloud platform using docker so I wouldn't need to install dependencies like java directly on the server, all needed is just docker to get started.

- Open an account with aws. It is recommended that, IAM user say iamadmin should be use to create the virtual machine(EC2), to follow through this demo instead of using root accounts.

- For firewall; I set the custom inbound rule at port 8080 for Jenkins. From where I will also expose it on the host from anywhere. Image below;
![aws-1](assets/aws-1.png)
![aws-2](assets/aws-2.png)

- Docker runtime; Next is to install Docker as my runtime environment by running below command;
    `sudo yum update -y`
    `sudo amazon-linux-extras install docker`
    `sudo service docker start`

- Accessing Jenkins Application; Now that I had installed docker, I then access it access the app from browser -p 8080:8080 and at -p 50000:50000 where Jenkins and master communicate. I also want it to run in the background if quit, plus I am attaching a volume to persist the data -v jenkins_home, referencing the name volume. With this command; 
    `docker run -p 8080:8080 -p 50000:50000 -d \`
    `-v jenkins_home:/var/jenkins_home jenkins/jenkins:lts`
I then copy the IP address and port to browser to view Jenkins app.

- Initialise Jenkins; Jenkins should display on the browser and I supplied one time use credential located at that path in red inside the container. How did I get this password? I change permission and ssh into the server while I cd into the .pem file download. With this command; ssh -i <identity_file.pem> ec2-user@<hostname>
![aws-3](assets/aws-3.png)

- Enter the container; I then enter into the container by running this command;
    `docker exec -it <container id> /bin/bash`
to view the content of the password with this command;
    `cat /var/jenkins_home/secrets/initialAdminPassword`
![aws-4](assets/aws-4.png)
- Create admin user; I prefer go with Install suggested plugins and create admin user
![aws-5](assets/aws-5.png)

# iac with terraform

## Setting up Terraform