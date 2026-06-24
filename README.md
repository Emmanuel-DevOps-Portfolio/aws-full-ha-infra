# High Availability AWS Infrastructure with Terraform

A production-grade, multi-tier, multi-AZ High Availability AWS infrastructure built with reusable Terraform modules.

## Architecture

- **Networking** — VPC, 3 public + 3 private app + 3 private DB subnets across 3 AZs, IGW, NAT Gateway(s), route tables
- **Compute** — Application Load Balancer, Auto Scaling Group, CloudWatch alarms (scale out >60% CPU, scale in <20% CPU)
- **Database** — RDS MySQL Multi-AZ with encrypted storage, automated backups, deletion protection
- **DNS** — Route 53 alias record + health check

## Module Structure
modules/

├── network/    # VPC, subnets, IGW, NAT, route tables

├── compute/    # Security groups, ALB, ASG, CloudWatch

├── database/   # RDS Multi-AZ, DB subnet group

└── dns/        # Route 53 alias + health check

environments/

└── dev/        # Root module
## Deploy

```bash
cd environments/dev
export TF_VAR_db_password="YourStrongPassword"
terraform init
terraform plan
terraform apply
```

## Author

Emmanuel Ulu — AWS Community Builder 2026 (Serverless) | [LinkedIn](https://linkedin.com/in/emmanuelulu)
