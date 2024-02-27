# CloudForge-Pipeline

## Overview

CloudForge-Pipeline is an automated multi-environment deployment pipeline designed to showcase proficiency in Infrastructure as Code (IaC) using Terraform, CI/CD principles, and environment management across Azure cloud services. This project demonstrates the use of GitHub for version control, Python for scripting, Azure as the cloud platform, Terraform for IaC, and CI/CD pipelines facilitated by GitHub Actions or Azure DevOps.

## Initial Setup

### Prerequisites

- Azure account and subscription
- GitHub account
- Terraform installed locally
- Python 3.x installed locally
- Visual Studio Code or any preferred IDE installed

### Clone the Repository

Start by cloning this repository to your local machine:

git clone https://github.com/yourusername/CloudForge-Pipeline.git
cd CloudForge-Pipeline


### Install Required Tools

Ensure you have the required tools installed and configured:

- **Azure CLI**: Used to authenticate and manage Azure resources.
- **Terraform**: For executing Infrastructure as Code (IaC).
- **Python**: Ensure Python is installed for any scripting needs.

### Configure Azure Authentication

Make sure you're logged in to the Azure CLI and set your subscription:

az login
az account set --subscription "Your Subscription Name/ID"


## Project Structure

The project is structured as follows to support multiple environments and modular infrastructure development:

/
├── .github/workflows # CI/CD pipeline definitions for GitHub Actions
├── terraform/ # Terraform configurations
│ ├── dev/ # Development environment configs
│ ├── test/ # Testing environment configs
│ ├── prod/ # Production environment configs
│ └── modules/ # Reusable Terraform modules
└── src/ # Source code for any application deployment


### Key Files and Directories

- `.github/workflows`: Contains the YAML files for CI/CD pipelines, automating deployment across environments.
- `terraform/{dev,test,prod}`: Directories holding environment-specific Terraform configurations.
- `terraform/modules`: Reusable Terraform modules for different Azure resources.
- `src`: Placeholder for application source code that will be deployed to Azure.

## Terraform Configuration

Ensure your Terraform configurations are set up correctly:

1. **Backend Setup**: Follow the instructions in the terraform directory to configure the Azure Blob Storage as the backend for Terraform state files.
2. **Modules Configuration**: Utilize the modules in the terraform/modules directory to create reusable components for Azure resources.

## CI/CD Pipeline Setup

This project uses GitHub Actions for CI/CD. Workflow files are located in `.github/workflows` and are set up for different environments (dev, test, prod). Ensure to review and adapt these workflows to match your project requirements.

## Deployment Process

1. **Development**: Push changes to the development branch to trigger deployments to the dev environment. Ideal for rapid testing and iterations.
2. **Testing**: Merge changes into the testing branch to deploy to the testing environment. Use this for more comprehensive tests and validations.
3. **Production**: Tag a release to trigger deployment to the production environment. This environment should be stable and is customer-facing.

## Building and Running the Python Application

### Building the Docker Container

Navigate to the `src` directory and build the Docker container for the Python application:

cd src
docker build -t cloudforge-pipeline-app


### Running the Docker Container

Run the Docker container, mapping the container's port 5000 to port 5000 on the host:

docker run -p 5000:5000 cloudforge-pipeline-app

Access the application in your web browser at `http://localhost:5000`.


## Contributing

Contributions to the CloudForge-Pipeline project are welcome!
