
# Terraform EC2 Web Server Deployment

## Project Overview

This project demonstrates how to provision AWS infrastructure using Terraform and deploy a Linux web server on an Amazon EC2 instance.

The EC2 instance runs Amazon Linux 2023 and uses Apache HTTP Server to host a custom HTML website.

## Architecture

The project creates the following AWS resources:

- **VPC:** Isolated virtual network.
- **Public Subnet:** Hosts the EC2 instance.
- **Internet Gateway:** Provides internet connectivity.
- **Route Table:** Routes outbound internet traffic.
- **Security Group:** Controls HTTP and SSH access.
- **EC2 Instance:** Runs the web server.
- **Apache HTTP Server:** Serves the website.

## Technologies Used

- AWS
- Terraform
- Amazon Linux 2023
- Apache HTTP Server
- Bash
- HTML and CSS
- Git and GitHub

## Project Structure

```text
Project-1-Terraform-EC2-WebServer/
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── userdata.sh
├── .gitignore
└── README.md
```

## Prerequisites

- An AWS account
- AWS CLI configured with appropriate IAM permissions
- Terraform installed
- Git installed

## Deployment Steps

### 1. Clone the repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd Project-1-Terraform-EC2-WebServer
```

### 2. Configure variables

Create `terraform.tfvars` with your AWS region and SSH-allowed public IP.

Do not commit this file to GitHub.

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Format Terraform files

```bash
terraform fmt
```

### 5. Validate configuration

```bash
terraform validate
```

### 6. Review infrastructure plan

```bash
terraform plan
```

### 7. Deploy infrastructure

```bash
terraform apply
```

Review the plan and type `yes` when ready to create the resources.

### 8. Access the website

After successful deployment, Terraform displays the public IP and website URL.

Open the website URL in your browser.

## Security

- SSH access is restricted to the configured public IPv4 address.
- HTTP access is allowed on port 80.
- EC2 uses encrypted root storage.
- EC2 requires IMDSv2 for instance metadata access.
- AWS credentials are not hardcoded in Terraform files.

## Cleanup

To remove the AWS resources created by this project:

```bash
terraform destroy
```

Review the destruction plan and type `yes` to confirm.

## Learning Outcomes

- Understanding Infrastructure as Code (IaC).
- Provisioning AWS resources using Terraform.
- Configuring VPC networking.
- Managing EC2 instances and security groups.
- Deploying a web server using a Bash User Data script.
- Managing infrastructure lifecycle with Terraform.

## Author

Created as a hands-on AWS and Terraform infrastructure project.

