markdown
<!-- ANIMATED HEADER -->
<div align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=32&duration=3000&pause=500&color=36BCF7&center=true&vCenter=true&width=600&lines=Hello%2C+I'm+Prayag+Dutt;DevOps+Engineer;Cloud+Architect;Automation+Enthusiast" alt="Typing Animation" />
</div>

<!-- PROFILE BADGES -->
<div align="center">
  <a href="https://github.com/Prayag762"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/></a>
  <a href="https://linkedin.com/in/prayag-dutt"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a>
  <a href="mailto:prayag.dutt@email.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
  <img src="https://komarev.com/ghpvc/?username=Prayag762&style=for-the-badge&color=blueviolet" alt="Profile Views" />
</div>

<!-- BANNER -->
<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=100&section=header&text=DevOps%20Engineer&fontSize=30&fontAlignY=40" width="100%" />
</div>

---

# 🚀 Enterprise DevOps Task Management Platform

### End-to-End CI/CD Pipeline | AWS | Terraform | Docker | Jenkins | Kubernetes | Ansible | Grafana

> A production-style cloud-native DevOps project demonstrating Infrastructure as Code (IaC), Continuous Integration & Continuous Deployment (CI/CD), containerization, Kubernetes orchestration, and AWS cloud deployment.

---

# 📖 Project Overview

The **Enterprise DevOps Task Management Platform** demonstrates a complete DevOps lifecycle from infrastructure provisioning to application deployment using modern DevOps tools and AWS cloud services.

The application is built using **Python Flask** with **Amazon RDS MySQL** as the backend database. Infrastructure is provisioned using **Terraform**, containerized using **Docker**, and deployed automatically through **Jenkins CI/CD**. Kubernetes deployment manifests are included to demonstrate container orchestration and production deployment readiness.

The project follows enterprise DevOps practices including Infrastructure as Code, automated deployments, containerization, and cloud-native architecture.

---

# 🏗 Architecture Diagram

```mermaid
graph TB
    subgraph AWS["☁️ AWS Cloud"]
        subgraph Networking["🌐 Networking"]
            VPC["VPC<br/>10.0.0.0/16"]
            IG["Internet Gateway"]
            NAT["NAT Gateway"]
            
            subgraph PublicSubnet["Public Subnet"]
                ALB["Application<br/>Load Balancer"]
                Bastion["Bastion Host"]
            end
            
            subgraph PrivateSubnet["Private Subnet"]
                EC2["🖥️ EC2 Instance<br/>(Docker Container)"]
                RDS["🗄️ RDS MySQL<br/>(Database)"]
            end
        end
        
        subgraph K8s["☸ Kubernetes Cluster"]
            Master["Control Plane"]
            Worker1["Worker Node 1"]
            Worker2["Worker Node 2"]
            Worker3["Worker Node 3"]
        end
        
        S3["📁 S3 Bucket"]
        IAM["🔐 IAM Roles"]
    end
    
    subgraph CI_CD["🔄 CI/CD Pipeline"]
        GitHub["📦 GitHub"]
        Jenkins["⚙️ Jenkins"]
        DockerHub["🐳 Docker Hub"]
    end
    
    subgraph Monitoring["📊 Monitoring Stack"]
        Prometheus["📈 Prometheus"]
        Grafana["📉 Grafana"]
    end
    
    Developer["👨‍💻 Developer"] -->|Git Push| GitHub
    GitHub -->|Webhook| Jenkins
    Jenkins -->|Build| DockerHub
    DockerHub -->|Deploy| EC2
    
    ALB -->|Route Traffic| EC2
    EC2 -->|Connect| RDS
    EC2 -->|Store| S3
    EC2 -->|Assume| IAM
    
    K8s -->|Deploy| EC2
    K8s -->|Monitor| Prometheus
    Prometheus -->|Visualize| Grafana
    
    IG --> ALB
    NAT --> EC2
    VPC --> PublicSubnet
    VPC --> PrivateSubnet
    
    style AWS fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style Networking fill:#e3f2fd,stroke:#1565c0,stroke-width:2px
    style PublicSubnet fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style PrivateSubnet fill:#fce4ec,stroke:#c62828,stroke-width:2px
    style K8s fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px
    style CI_CD fill:#e8eaf6,stroke:#283593,stroke-width:2px
    style Monitoring fill:#e0f7fa,stroke:#00695c,stroke-width:2px
☁ AWS Architecture
The complete AWS infrastructure is provisioned using Terraform.

Resources Created
Amazon VPC

Public Subnets

Private Subnets

Internet Gateway

NAT Gateway

Route Tables

Security Groups

EC2 Instances

Amazon RDS MySQL

Amazon S3

Application Load Balancer Components

IAM Roles

⚙ Technology Stack
Category	Technologies
Programming	Python, Flask
Database	MySQL, Amazon RDS
Cloud Platform	AWS EC2, RDS, VPC, IAM, S3
Infrastructure as Code	Terraform
Configuration Management	Ansible
CI/CD	Jenkins
Containerization	Docker
Container Orchestration	Kubernetes
Monitoring	Grafana, Prometheus
Version Control	Git, GitHub
Operating System	Ubuntu Linux
📂 Repository Structure
text
enterprise-devops-platform
│
├── Src/
│   ├── app/
│   ├── migrations/
│   ├── requirements.txt
│   └── run.py
│
├── terraform/
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── internet-gateway.tf
│   ├── nat-gateway.tf
│   ├── route-table.tf
│   ├── security-group.tf
│   ├── ec2.tf
│   ├── alb.tf
│   ├── target-group.tf
│   ├── rds.tf
│   ├── s3.tf
│   ├── variables.tf
│   ├── versions.tf
│   └── userdata.sh
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
├── Dockerfile
├── Jenkinsfile
├── README.md
└── .gitignore
🔄 CI/CD Pipeline Workflow
The CI/CD pipeline automates the complete application deployment.

Pipeline Flow
Developer pushes code to GitHub.

Jenkins automatically triggers the pipeline.

Jenkins checks out the latest source code.

Docker image is built.

Image is pushed to Docker Hub.

Latest container is deployed on the application server.

Flask application connects to Amazon RDS.

Users access the application.

🐳 Docker
Build Image
bash
docker build -t prayag1/enterprise-devops-platform:latest .
Login
bash
docker login
Push Image
bash
docker push prayag1/enterprise-devops-platform:latest
Run Container
bash
docker run -d \
-p 5000:5000 \
--name devops-platform \
prayag1/enterprise-devops-platform:latest
☸ Kubernetes
The project includes Kubernetes manifests for deployment.

Current resources:

Deployment

Service

Deployment supports:

Multiple Replicas

Rolling Updates

Self-Healing Pods

High Availability

🏗 Infrastructure as Code
Infrastructure provisioning is fully automated using Terraform.

Terraform provisions:

VPC

Networking

EC2

Security Groups

RDS

S3

IAM

Load Balancer Components

Benefits:

Repeatable deployments

Version-controlled infrastructure

Easy scalability

Automated provisioning

⚙ Configuration Management
The project is designed to support Ansible for server configuration automation.

Typical automation tasks include:

Package Installation

Docker Installation

Python Installation

Jenkins Configuration

Environment Configuration

Application Deployment

📊 Monitoring
The platform is designed for integration with modern monitoring tools.

Monitoring Stack
Grafana Dashboards

Prometheus Metrics

EC2 Monitoring

Docker Monitoring

Kubernetes Monitoring

Infrastructure Health Monitoring

🔐 Security Features
Private Amazon RDS

Security Groups

IAM Roles

Private Networking

Public/Private Subnet Separation

Least Privilege Access

🌟 Key Features
✅ Infrastructure as Code using Terraform

✅ End-to-End CI/CD using Jenkins

✅ Dockerized Flask Application

✅ Amazon RDS MySQL Integration

✅ AWS Infrastructure Deployment

✅ Kubernetes Deployment Ready

✅ GitHub Source Control

✅ Docker Hub Integration

✅ Secure Networking

✅ Monitoring Ready with Grafana & Prometheus

✅ Configuration Automation Ready with Ansible

🚀 Future Enhancements
Kubernetes Ingress Controller

Horizontal Pod Autoscaler (HPA)

Helm Charts

ArgoCD GitOps

Prometheus Monitoring

Grafana Dashboards

Ansible Playbooks

SSL/TLS using AWS ACM

Route53 DNS

Blue-Green Deployment

Canary Deployment

📈 Learning Outcomes
This project demonstrates practical experience with:

AWS Cloud

DevOps Practices

Infrastructure as Code

Continuous Integration

Continuous Deployment

Docker

Kubernetes

Terraform

Jenkins

GitHub

Linux Administration

Cloud Networking

👨‍💻 Author
Prayag Dutt

GitHub

https://github.com/Prayag762

LinkedIn

www.linkedin.com/in/prayag-dutt

📊 GitHub Analytics
<div align="center"> <img src="https://github-readme-stats.vercel.app/api?username=Prayag762&show_icons=true&count_private=true&hide_border=true&title_color=36BCF7&icon_color=36BCF7&text_color=c9d1d9&bg_color=0d1117" alt="GitHub Stats" width="48%" /> <img src="https://github-readme-streak-stats.herokuapp.com/?user=Prayag762&hide_border=true&background=0d1117&stroke=36BCF7&ring=36BCF7&fire=36BCF7&currStreakNum=c9d1d9&sideLabels=36BCF7&sideNums=c9d1d9" alt="GitHub Streak" width="48%" /> </div><div align="center"> <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=Prayag762&layout=compact&hide_border=true&title_color=36BCF7&text_color=c9d1d9&bg_color=0d1117" alt="Top Languages" width="40%" /> </div>
🏆 GitHub Trophies
<div align="center"> <img src="https://github-profile-trophy.vercel.app/?username=Prayag762&theme=onedark&no-frame=true&row=2&column=4" alt="GitHub Trophies" /> </div>
📈 Contribution Graph
<img src="https://activity-graph.herokuapp.com/graph?username=Prayag762&custom_title=Prayag's%20Contribution%20Graph&bg_color=0d1117&color=36BCF7&line=36BCF7&point=FFFFFF&hide_border=true" />
🤝 Let's Connect!
I'm always open to collaborating on interesting projects or discussing DevOps best practices.

<div align="center"> <a href="https://github.com/Prayag762"> <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" /> </a> <a href="https://linkedin.com/in/prayag-dutt"> <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" /> </a> <a href="mailto:prayag.dutt@email.com"> <img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" /> </a> <a href="#"> <img src="https://img.shields.io/badge/Portfolio-FF5722?style=for-the-badge&logo=google-chrome&logoColor=white" /> </a> </div>
<div align="center"> <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=100&section=footer" width="100%" /> </div><div align="center"> <b>⭐ If this profile helped you, consider starring my projects! ⭐</b> </div> ```
📝 What This README Includes:
Section	Description
🎬 Animated Header	Typing animation with your name and title
🚀 Project Overview	Complete project description
🏗 Architecture Diagram	Professional Mermaid.js diagram showing AWS, Kubernetes, CI/CD, and Monitoring
☁ AWS Architecture	Detailed infrastructure components
⚙ Technology Stack	Complete tech stack table
📂 Repository Structure	Project directory tree
🔄 CI/CD Pipeline	Step-by-step workflow
🐳 Docker	Build, push, run commands
☸ Kubernetes	Deployment details
🏗 Infrastructure as Code	Terraform details
⚙ Configuration Management	Ansible automation
📊 Monitoring	Grafana & Prometheus
🔐 Security	Security features
🌟 Key Features	Feature checklist
🚀 Future Enhancements	Roadmap
📈 Learning Outcomes	Skills gained
👨‍💻 Author	Your information
📊 GitHub Analytics	Stats, trophies, contribution graph
🎯 How to Use:
Copy the entire content above

Go to https://github.com/Prayag762/Prayag762

Edit README.md and paste the content

Commit the changes

⚡ Quick Customizations Needed:
Replace these with your actual information:

prayag.dutt@email.com → Your actual email

Update LinkedIn URL if needed

Add your portfolio URL if available

Update Docker Hub username if different

The Mermaid.js diagram will render automatically on GitHub! 🚀
