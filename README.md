# Secure-Scalable-3-Tier-Cloud-Infrastructure-on-AWS
This project demonstrates a 3-tier architecture on AWS using Terraform. It includes VPC, Public/Private Subnets, NAT Gateway, EC2 servers, RDS Database, and an Application Load Balancer. Designed for high availability, modularity, and security.
3-Tier Architecture

![image alt](https://github.com/pravin-1040/Secure-Scalable-3-Tier-Cloud-Infrastructure-on-AWS/blob/main/architecture-diagram.png?raw=true)

## Features
- Multi-AZ VPC with Public, Private, and DB Subnets
- NAT Gateway for Internet access from private subnets
- EC2 Application Servers in Private Subnets
- MySQL RDS Database in Private Subnets
- Application Load Balancer for public access
- Modular Terraform files for easy management
- Outputs: ALB DNS, EC2 Private IPs, RDS Endpoint


## Tools & Technologies
- Terraform 1.5
- AWS (VPC, EC2, RDS, ALB)
- VS Code / PowerShell
- Git & GitHub


## Folder Structure
terraform-project/
├── ec2.tf
├── alb.tf
├── rds.tf
├── subnet.tf
├── vpc.tf
├── nat-gateway.tf
├── security-groups.tf
├── iam.tf
├── provider.tf
├── variables.tf
├── versions.tf
└── README.md


## How to Deploy
1. Clone the repo:
git clone https://github.com/pravin-1040/Secure-Scalable-3-Tier-Cloud-Infrastructure-on-AWS/tree/main
cd terraform-project
2.Configure AWS CLI profile:
aws configure
3.Initialize Terraform:
terraform init
4.Plan Terraform deployment:
terraform plan
5.Apply Terraform configuration:
terraform apply

![image alt](https://github.com/pravin-1040/Secure-Scalable-3-Tier-Cloud-Infrastructure-on-AWS/blob/main/apply_success.PNG?raw=true)

6.Access outputs:
terraform output
7.Clean Up / Destroy:
terraform destroy




