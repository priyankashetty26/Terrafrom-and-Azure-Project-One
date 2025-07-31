# Terrafrom-and-Azure-Project-One
## Install Terraform:
1. https://developer.hashicorp.com/terraform/install#windows </br> 
2. Install Windows AMD64</br> 
3. Download -> extract and copy terraform.exe to C:/Terraform (Create new folder and copy here)</br> 
4. Open terraform.exe -> Open command prompt 'cd C:Terraform' -> run terraform --version and see if installation is successfull.</br> 

## Github Secrets and Azure Login action in Github workflow
1. Create service principal with a client secret in Azure EntraID.</br> 
2. Create a GitHub Actions secret AZURE_CREDENTIALS in the following format. Copy the values for Client ID, Client Secret, Subscription ID, and Directory (tenant) ID from service principal.</br> 
   <img width="419" height="142" alt="image" src="https://github.com/user-attachments/assets/bcce4b8d-9c70-48e7-8650-0f02aa87b063" /></br> 
3. Secure authentication to Azure services from GitHub Actions workflows can be done using Azure Login action with the service principal details stored in secrets.AZURE_CREDENTIALS .</br> 
(https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure-secret)</br> 

## Main.tf file
TerraformTest/main.tf - Refer comments for explanation

## Github Workflow to automate Terraform
.github/workflows/terraform_githubaction.yml - Refer comments for explanation

## Terraform - Backend
Use Azure Storage Account for Remote State. Terraform stores its state remotely using Azure Blob Storage.Azure backend supports state locking via blob leases.</br>
This prevents concurrent runs from corrupting the state file </br>
<img width="400" height="203" alt="image" src="https://github.com/user-attachments/assets/95399b0d-46e2-4d3c-a663-0493b7a01650" />
