# Terraform AWS EKS

This repository contains Terraform scripts to deploy an Amazon EKS (Elastic Kubernetes Service) cluster on AWS.

## Prerequisites

Before you begin, ensure you have the following installed:



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


4. Review and customize the `main.tf` file to adjust your AWS resources' configurations according to your requirements.


7. Plan your Terraform deployment:

    ```bash
    terraform plan
    ```

8. Deploy your EKS cluster:

    ```bash
    terraform apply
    ```

9. After the deployment is complete, configure `kubectl` to communicate with your EKS cluster:

    ```bash
    aws eks --region <region> update-kubeconfig --name <cluster-name>
    ```

## Cleaning Up

To clean up and destroy the resources created by Terraform, run:

```bash
terraform destroy
