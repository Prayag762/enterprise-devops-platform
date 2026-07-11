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
