# Terraform AWS Infrastructure
## Terraform-Remote-Backend-Configuration-with-S3-and-DynamoDB

This repository contains Terraform scripts to provision infrastructure on AWS. It sets up an EC2 instance, an S3 bucket to store Terraform state files, and a DynamoDB table for state locking.

## Description

Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. These scripts are designed to be used with Terraform to automate the provisioning of infrastructure resources on Amazon Web Services (AWS).

## Prerequisites

Before using these scripts, ensure you have the following prerequisites:

- **Terraform Installed:** Make sure you have Terraform installed on your local machine. You can download and install Terraform from the [official website](https://www.terraform.io/downloads.html).

- **AWS Account:** You'll need an AWS account with appropriate permissions to provision resources. Ensure you have AWS access keys configured on your local machine either by configuring AWS CLI or setting environment variables.

## Usage

1. **Clone the Repository:**
   Clone this repository to your local machine using the following command:

    ```bash
    git clone https://github.com/your-username/terraform-aws-infrastructure.git
    ```

2. **Navigate to the Repository:**
   Change into the cloned repository directory:

    ```bash
    cd terraform-aws-infrastructure
    ```

3. **Update Terraform Configuration:**
   Edit the `main.tf` file to customize the infrastructure configuration according to your requirements. You can specify the EC2 instance type, AMI, S3 bucket name, DynamoDB table name, etc.

4. **Initialize Terraform:**
   Initialize Terraform in the repository directory:

    ```bash
    terraform init
    ```

5. **Review the Terraform Plan:**
   Generate and review an execution plan before applying the changes:

    ```bash
    terraform plan
    ```

6. **Apply Terraform Configuration:**
   Apply the Terraform configuration to provision the infrastructure on AWS:

    ```bash
    terraform apply
    ```

7. **Clean Up:**
   To destroy the created resources and clean up the infrastructure, run:

    ```bash
    terraform destroy
    ```

## Backend Configuration

The `backend.tf` file configures the backend for Terraform state management. It specifies that Terraform should use S3 as the backend to store the state file (`terraform.tfstate`). The state file will be stored in the S3 bucket named `"tarun-chand-terraform-statefile-backend"`, with the key `"terraform/terraform.tfstate"`. It also enables encryption for the state file and specifies a DynamoDB table named `"Terraform-Backend-lock"` for state locking, ensuring only one Terraform process can modify the state at a time.

## Contributing

Contributions to this repository are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.


