# SRE II Assignment: Gitea and Grafana with SSO

## Architecture Overview

This solution provides:
- Gitea for Git repository management
- Grafana for monitoring and visualization
- Authelia for Single Sign-On (SSO)
- Nginx as reverse proxy
- All services containerized with Docker
- AWS infrastructure provisioned with Terraform

## Prerequisites

1. AWS account with CLI configured
2. Terraform installed locally
3. SSH key pair for AWS access

## Deployment Steps

1. Clone this repository
2. Update variables in `terraform/terraform.tfvars` and `.env`
3. Deploy infrastructure with Terraform
4. SSH into the instance
5. Generate SSL certificates
6. Start services with Docker Compose

## Accessing Services

- Gitea: https://yourdomain.com
- Grafana: https://yourdomain.com/grafana
- Authelia portal: https://yourdomain.com/auth

## Default Credentials

Two users are pre-configured:
1. john / password (admin privileges)
2. jane / password (regular user)

## Maintenance

- To update services: `docker-compose pull && docker-compose up -d`
- To view logs: `docker-compose logs -f`

## Cleanup

To destroy AWS resources:
```bash
cd terraform
terraform destroy
