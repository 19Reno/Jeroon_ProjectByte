8byte-Jeroon Infrastructure Project

Overview

Cloud infrastructure provisioned on Azure using Terraform with automated CI/CD via GitHub Actions. Containerized application deployed to Azure VM with Prometheus and Grafana monitoring.

Architecture

- VNet with public and private subnets
- Azure VM (application hosting)
- Azure Load Balancer (frontend traffic)
- Azure Container Registry (Docker images)
- Prometheus + Grafana (monitoring)
- Azure Blob Storage (Terraform remote state)


 Tech Stack

IaC: Terraform (modular)
CI/CD: GitHub Actions
Containers: Docker
Registry: ACR
Monitoring: Prometheus, Grafana
Secret Management: Azure Key Vault

 Prerequisites

-Terraform installed
-Azure CLI installed
-Docker installed

 Deploy Infrastructure

       Deployed on azure infracture using terraform modular by providing infracture as a code(IaC) which is reusable for stored state file in azure blob storage


 CI/CD Pipeline

Push to main triggers:
1. Build Docker image
2. Trivy vulnerability scan
3. Push to ACR
4. Deploy to staging
5. Manual approval for production

Monitoring

-Grafana: http://VM-IP:3000
-Prometheus: http://VM-IP:9090

Security

-No hardcoded credentials
-Azure Key Vault for secrets
-NSG rules restricting DB access to private subnet only
-Trivy scanning in pipeline



