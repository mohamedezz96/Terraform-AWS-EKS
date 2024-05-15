# Terraform AWS EKS

This repository contains Terraform scripts to deploy an Amazon EKS (Elastic Kubernetes Service) cluster on AWS.

## Prerequisites

Before you begin, ensure you have the following installed:

- Terraform installed on your local machine.
- AWS credentials configured with the necessary permissions to manage EKS resources.
- kubectl tool is installed on your local machine.

## Getting Started

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/mohamedezz96/Terraform-AWS-EKS.git
    ```

2. Navigate to the repository directory:

    ```bash
    cd Terraform-AWS-EKS
    ```
     
3. Initialize Terraform:

    ```bash
    terraform init
    ```


4. Review and customize the `main.tf` & `terraform.tf` files to adjust your AWS resources' configurations according to your requirements.


5. Plan your Terraform deployment:

    ```bash
    terraform plan
    ```

6. Deploy your EKS cluster:

    ```bash
    terraform apply
    ```

7. After the deployment is complete, configure `kubectl` to communicate with your EKS cluster:

    ```bash
    aws eks --region <region> update-kubeconfig --name <cluster-name>
    ```

## Cleaning Up

To clean up and destroy the resources created by Terraform, run:

```bash
terraform destroy
```
