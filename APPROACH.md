Approach

Infrastructure

Chose Terraform over Azure ARM templates because it is cloud-agnostic and reusable across AWS and Azure. Used modular structure so each component (network, compute, database, loadbalancer) is independent and reusable.

Remote state stored in Azure Blob Storage so the state file is shared and locked during runs — prevents corruption from concurrent applies.

Cloud Provider

Used Azure because of existing free trial credits. Infrastructure maps directly to AWS equivalents — VNet is VPC, NSG is Security Group, ACR is ECR, Azure VM is EC2.

CI/CD

Chose GitHub Actions because it integrates natively with the repository. Pipeline is split into stages — test on PR, build and push on merge to main, deploy to staging automatically, deploy to production only after manual approval.

Trivy integrated before push to registry — catches vulnerabilities before they reach production. This is shift-left security.

Monitoring

Chose Prometheus and Grafana over Azure Monitor because they are open source, cloud-agnostic, and I have production experience with this stack. node-exporter collects VM metrics, nginx-exporter collects application metrics.

Security

No credentials stored in code or pipeline environment variables. Azure Key Vault used for secret storage. Service principal scoped to resource group only — least privilege.

NSG rules restrict SSH to VNet CIDR only. Database accessible only from private subnet.
