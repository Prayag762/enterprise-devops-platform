<!-- Header Banner -->
<img src="https://capsule-render.vercel.app/api?type=waving&color=0EA5E9&height=150&section=header&text=Hello!%20I'm%20Prayag%20Dutt&fontSize=40&fontAlignY=35&animation=twinkling&fontColor=ffffff" width="100%" />
<div align="center">
<!-- Typing Animation -->
<a href="https://linkedin.com/in/prayag-dutt">
  <img src="https://readme-typing-svg.herokuapp.com?font=Inter&weight=600&size=24&duration=3000&pause=1000&color=0EA5E9&center=true&vCenter=true&width=600&lines=DevOps+Engineer;Cloud+Architect;;Automation+Enthusiast" alt="Typing Animation" />
</a>
<br>
<!-- Social Badges (Using their official brand colors for better recognition) -->
<a href="https://github.com/Prayag762">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"/>
</a>
<a href="https://linkedin.com/in/prayag-dutt">
  <img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/>
</a>
<a href="mailto:prayag.dutt@email.com">
  <img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email"/>
</a>
<br><br>
<!-- Profile Views -->
<img src="https://komarev.com/ghpvc/?username=Prayag762&style=flat-square&color=0EA5E9&label=Profile%20Views" alt="Profile Views" />
</div>
---
# 🚀 Enterprise DevOps Task Management Platform

### End-to-End CI/CD Pipeline | AWS | Terraform | Docker | Jenkins | Kubernetes | Ansible | Grafana

> A production-style cloud-native DevOps project demonstrating Infrastructure as Code (IaC), Continuous Integration & Continuous Deployment (CI/CD), containerization, Kubernetes orchestration, and AWS cloud deployment.

---

## 📖 Project Overview

The **Enterprise DevOps Task Management Platform** demonstrates a complete DevOps lifecycle from infrastructure provisioning to application deployment using modern DevOps tools and AWS cloud services.

The application is built using **Python Flask** with **Amazon RDS MySQL** as the backend database. Infrastructure is provisioned using **Terraform**, containerized using **Docker**, and deployed automatically through **Jenkins CI/CD**. Kubernetes deployment manifests are included to demonstrate container orchestration and production deployment readiness.

The project follows enterprise DevOps practices including Infrastructure as Code, automated deployments, containerization, and cloud-native architecture.

## 🏗 Architecture Diagram

```mermaid
flowchart TB
    %% ==================== TOP LAYER ====================
    Developer["👨‍💻 Developer"] -->|"1. Write & Push Code"| GitHub
    
    %% ==================== CI/CD PIPELINE ====================
    subgraph CI["🔄 CI/CD Pipeline"]
        GitHub["📦 GitHub Repository"]
        Jenkins["⚙️ Jenkins CI/CD"]
        DockerBuild["🐳 Build Image"]
        DockerPush["📤 Push to Docker Hub"]
        
        GitHub -->|"2. Webhook Trigger"| Jenkins
        Jenkins -->|"3. Checkout"| GitHub
        Jenkins -->|"4. Build"| DockerBuild
        DockerBuild -->|"5. Push"| DockerPush
    end

    %% ==================== KUBERNETES CLUSTER ====================
    subgraph K8s["☸️ Kubernetes Cluster (AWS EC2)"]
        direction TB
        
        subgraph ControlPlane["🎛️ Control Plane"]
            API["⚙️ API Server"]
            Scheduler["📅 Scheduler"]
            API <--> Scheduler
        end
        
        subgraph WorkerNodes["💻 Worker Nodes"]
            Pod1["📦 Pod 1"]
            Pod2["📦 Pod 2"]
            Pod3["📦 Pod 3"]
        end
        
        Service["🔄 Kubernetes Service"]
        
        ControlPlane -->|"Schedule"| WorkerNodes
        WorkerNodes -->|"Expose"| Service
    end

    %% ==================== AWS SERVICES ====================
    subgraph AWS["☁️ AWS Cloud"]
        ALB["⚖️ Application Load Balancer"]
        
        subgraph DataLayer["🗄️ Data Layer"]
            RDS["Amazon RDS MySQL"]
            S3["📁 Amazon S3"]
        end
        
        subgraph Infra["🏗️ Infrastructure as Code"]
            Terraform["Terraform"]
            Ansible["Ansible"]
        end
    end

    %% ==================== MONITORING ====================
    subgraph Monitoring["📊 Monitoring Stack"]
        Prometheus["📈 Prometheus"]
        Grafana["📉 Grafana"]
        Prometheus -->|"Visualize"| Grafana
    end

    %% ==================== END USERS ====================
    Users["👥 End Users"]

    %% ==================== MAIN FLOW ====================
    DockerPush -->|"6. Deploy"| API
    API -->|"7. Schedule"| WorkerNodes
    Service -->|"8. Route"| ALB
    ALB -->|"9. Access"| Users
    
    %% ==================== DATA FLOWS ====================
    WorkerNodes -->|"Store Data"| RDS
    WorkerNodes -->|"Store Files"| S3
    Terraform -->|"Provision"| ALB
    Ansible -->|"Configure"| API
    WorkerNodes -->|"Metrics"| Prometheus

    %% ==================== STYLING ====================
    %% Layer Colors
    style CI fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px,color:#333
    style K8s fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px,color:#333
    style ControlPlane fill:#fff3e0,stroke:#e65100,stroke-width:2px,color:#333
    style WorkerNodes fill:#fce4ec,stroke:#c62828,stroke-width:2px,color:#333
    style AWS fill:#e3f2fd,stroke:#1565c0,stroke-width:2px,color:#333
    style DataLayer fill:#e0f7fa,stroke:#00695c,stroke-width:2px,color:#333
    style Infra fill:#e8eaf6,stroke:#283593,stroke-width:2px,color:#333
    style Monitoring fill:#fff8e1,stroke:#f57f17,stroke-width:2px,color:#333
    
    %% Node Colors
    style Developer fill:#d32f2f,stroke:#b71c1c,stroke-width:3px,color:#fff,font-weight:bold
    style Users fill:#1976d2,stroke:#0d47a1,stroke-width:3px,color:#fff,font-weight:bold
    style GitHub fill:#9c27b0,stroke:#6a1b9a,stroke-width:2px,color:#fff
    style Jenkins fill:#607d8b,stroke:#37474f,stroke-width:2px,color:#fff
    style DockerBuild fill:#00acc1,stroke:#006064,stroke-width:2px,color:#fff
    style DockerPush fill:#00acc1,stroke:#006064,stroke-width:2px,color:#fff
    style API fill:#ff9800,stroke:#e65100,stroke-width:2px,color:#fff
    style Scheduler fill:#ffa726,stroke:#e65100,stroke-width:2px,color:#fff
    style Service fill:#66bb6a,stroke:#2e7d32,stroke-width:2px,color:#fff
    style ALB fill:#42a5f5,stroke:#1565c0,stroke-width:2px,color:#fff
    style RDS fill:#26a69a,stroke:#00695c,stroke-width:2px,color:#fff
    style S3 fill:#ffa726,stroke:#e65100,stroke-width:2px,color:#fff
    style Terraform fill:#7c4dff,stroke:#4a148c,stroke-width:2px,color:#fff
    style Ansible fill:#ef5350,stroke:#b71c1c,stroke-width:2px,color:#fff
    style Prometheus fill:#e53935,stroke:#b71c1c,stroke-width:2px,color:#fff
    style Grafana fill:#43a047,stroke:#1b5e20,stroke-width:2px,color:#fff
    style Pod1 fill:#81c784,stroke:#2e7d32,stroke-width:2px,color:#fff
    style Pod2 fill:#81c784,stroke:#2e7d32,stroke-width:2px,color:#fff
    style Pod3 fill:#81c784,stroke:#2e7d32,stroke-width:2px,color:#fff

    %% Arrow Styling
    linkStyle default stroke:#333,stroke-width:2px,fill:none
```
🔄 CI/CD Pipeline Workflow

### 🔄 CI/CD Pipeline Workflow

```mermaid
flowchart LR
    A[Developer] -->|Git Push| B[GitHub]
    B -->|Webhook| C[Jenkins]
    C --> D[Checkout Source Code]
    D --> E[Install Dependencies]
    E --> F[Run Tests]
    F --> G[Build Docker Image]
    G --> H[Push to Docker Hub]
    H --> I[Deploy Latest Version]
    I --> J[Kubernetes Cluster]
    J --> K[Application Live]
    
    classDef default fill:#0ea5e9,stroke:#0284c7,stroke-width:2px,color:#ffffff;

```

## ☁ AWS Architecture

The complete AWS infrastructure is provisioned using Terraform.

### 🏗️ Infrastructure Components

**Resources Created:**

- ✅ Amazon VPC
- ✅ Public Subnets
- ✅ Private Subnets
- ✅ Internet Gateway
- ✅ NAT Gateway
- ✅ Route Tables
- ✅ Security Groups
- ✅ EC2 Instances
- ✅ Amazon RDS MySQL
- ✅ Amazon S3
- ✅ Application Load Balancer
- ✅ IAM Roles

## ⚙ Technology Stack

| Category | Technologies |
|---|---|
| Database | MySQL, Amazon RDS |
| Containerization | Docker |
| Container Orchestration | Kubernetes |
| CI/CD | Jenkins |
| Infrastructure as Code | Terraform |
| Configuration Management | Ansible |
| Cloud Platform | AWS |
| Monitoring |  Grafana |
| Image Registry | Docker Hub |
| Version Control | Git & GitHub |

## ☁️ AWS Services Used

- ☁️ Amazon EC2
- ☁️ Amazon RDS (MySQL)
- ☁️ Amazon VPC
- ☁️ Public & Private Subnets
- ☁️ Internet Gateway
- ☁️ NAT Gateway
- ☁️ Route Tables
- ☁️ Security Groups
- ☁️ Application Load Balancer
- ☁️ IAM
- ☁️ Amazon S3

## 📂 Repository Structure

```text
enterprise-devops-platform/
│
├── App_Login_Screenshot          # APP SCREENSHOTS
│   ├── APP_HOME_PAGE/
│   ├── APP_LOGIN_PAGE/
│
├── Src/                          # Flask Application
│   ├── app/
│   ├── migrations/
│   ├── requirements.txt
│   └── run.py
│
├── terraform/                    # Infrastructure as Code
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
├── ansible/                      # Configuration Management
│   ├── playbook.yml
│   └── inventory/
│
├── k8s/                          # Kubernetes Manifests
│   ├── deployment.yaml
│   └── service.yaml
│
├── Dockerfile
├── Jenkinsfile
├── README.md
└── .gitignore
```

## ✨ Key Features

- ✅ End-to-End CI/CD Pipeline using Jenkins
- ✅ Infrastructure Provisioning using Terraform
- ✅ Configuration Management using Ansible
- ✅ Dockerized Flask Application
- ✅ Docker Hub Image Repository
- ✅ Kubernetes Deployments
- ✅ Rolling Updates
- ✅ Self-Healing Pods
- ✅ Replica Management
- ✅ Amazon RDS Integration
- ✅ Amazon S3 Integration
- ✅ Application Load Balancer
- ✅ Public & Private Networking
- ✅ Secure Security Groups
- ✅ Infrastructure Automation
- ✅ Production-style DevOps Workflow
- ✅ Monitoring Ready 
  
## 🐳 Docker

### Build Image

```bash
docker build -t prayag1/enterprise-devops-platform:latest .
```
### Login to Docker Hub
```bash
docker login
```
### Push Image
```bash
docker push prayag1/enterprise-devops-platform:latest
```
### Run Container
```bash
docker run -d \
  -p 5000:5000 \
  --name devops-platform \
  prayag1/enterprise-devops-platform:latest
```

## ☸ Kubernetes

### Deploy Application
```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```
### Check Pods
```bash
kubectl get pods
```
### Check Services
```bash
kubectl get svc
```
### Scale Application
```bash
kubectl scale deployment enterprise-devops-platform --replicas=5
```
### Rolling Update
```bash
kubectl set image deployment/enterprise-devops-platform \
  enterprise-devops-platform=prayag1/enterprise-devops-platform:latest
```

## 🌍 Terraform

### Initialize
```bash
cd terraform
terraform init
```
### Plan
```bash
terraform plan
```
### Apply
```bash
terraform apply -auto-approve
```
### Destroy
```bash
terraform destroy
```
## ⚙ Ansible
### Run Playbook
```bash
ansible-playbook -i inventory/production playbook.yml
```
### Check Syntax
```bash
ansible-playbook playbook.yml --syntax-check
```
### Dry Run
```bash
ansible-playbook playbook.yml --check
```
## 📊 Monitoring

The platform is designed to integrate with modern monitoring tools.

### Monitoring Stack

- 📉 **Grafana** - Dashboards & Visualization

### Monitoring Capabilities

- Infrastructure Monitoring
- Container Monitoring
- CPU & Memory Utilization
- Application Health
- Kubernetes Metrics
- Alerting & Dashboards
- 🔍 Infrastructure Monitoring
- 📦 Container Monitoring
- ⚡ CPU & Memory Utilization
- 🏥 Application Health
- ☸️ Kubernetes Metrics
- 🔔 Alerting & Dashboards

## 🔐 Security Features

- 🔒 Private Amazon RDS
- 🔒 Security Groups
- 🔒 IAM Roles
- 🔒 Private Networking
- 🔒 Public/Private Subnet Separation
- 🔒 Least Privilege Access
- 🔒 Security Group Rules
- 🔒 Network Isolation

## 📈 Future Enhancements

- Kubernetes Ingress Controller
- Horizontal Pod Autoscaler (HPA)
- Helm Charts
- AWS EKS Deployment
- ArgoCD GitOps
- SonarQube Integration
- Trivy Image Scanning
- AWS CloudWatch Logs
- Prometheus Alert Manager
- SSL/TLS using AWS ACM
- Route53 DNS
- Blue-Green Deployment
- Canary Deployment
- 🚀 Kubernetes Ingress Controller
- 🔄 Horizontal Pod Autoscaler (HPA)
- 📦 Helm Charts
- ☁️ AWS EKS Deployment
- 🔄 ArgoCD GitOps
- 🔍 SonarQube Integration
- 🛡️ Trivy Image Scanning
- 📝 AWS CloudWatch Logs
- 🔔 Prometheus Alert Manager
- 🔐 SSL/TLS using AWS ACM
- 🌐 Route53 DNS
- 🔵🟢 Blue-Green Deployment
- 🐤 Canary Deployment

## 🎯 Learning Outcomes

This project demonstrates practical experience with:

- ☁️ AWS Cloud
- 🔄 DevOps Practices
- 🏗️ Infrastructure as Code
- 🔄 Continuous Integration
- 🚀 Continuous Deployment
- 🐳 Docker
- ☸ Kubernetes
- 🌍 Terraform
- ⚙️ Jenkins
- 🐙 GitHub
- 🐧 Linux Administration
- 🌐 Cloud Networking
- 📊 Monitoring & Observability
- 🔐 Security Best Practices
---

## 👨💻 Author

**Prayag Dutt**

## 🤝 Let's Connect!

<div align="center">
  <p style="color: #8b949e; max-width: 550px; margin: 0 auto 25px;">
    Always open to collaborations, DevOps discussions, or just a friendly chat. 
    Let's build something amazing together! 🚀
  </p>

  <div style="display: flex; justify-content: center; gap: 15px; flex-wrap: wrap;">
    <a href="https://github.com/Prayag762"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/></a>
    <a href="https://linkedin.com/in/prayag-dutt"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a>
    <a href="mailto:prayag.dutt@email.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
  </div>

  <br />

  <div style="padding: 15px 20px; background: rgba(54, 188, 247, 0.05); border-radius: 10px; border-left: 3px solid #36BCF7;">
    <p style="margin: 0; color: #c9d1d9;">
      ⭐ <strong style="color: #36BCF7;">Star this repo</strong> if you found it valuable — it helps others discover this project!
    </p>
  </div>

  <br />

  <p style="color: #8b949e; font-size: 0.85rem;">
    Made with ☕ and ❤️ using DevOps
  </p>
</div>

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=100&section=footer" width="100%" />
</div>

<div align="center">
  <b style="background: linear-gradient(135deg, #667eea, #764ba2); -webkit-background-clip: text; -webkit-text-fill-color: transparent; font-size: 1.1rem;">
    ⭐ If this project helped you, don't forget to star the repository! ⭐
  </b>
</div>
