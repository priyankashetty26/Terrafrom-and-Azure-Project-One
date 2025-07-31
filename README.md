# Terrafrom-and-Azure-Project-One
## Install Terraform:
1. https://developer.hashicorp.com/terraform/install#windows 
2. Install Windows AMD64
3. Download -> extract and copy terraform.exe to C:/Terraform (Create new folder and copy here)
4. Open terraform.exe -> Open command prompt 'cd C:Terraform' -> run terraform --version and see if installation is successfull.

## Github Secrets and Azure Login action in Github workflow
1. Create service principal with a client secret in Azure EntraID.
2. Create a GitHub Actions secret AZURE_CREDENTIALS in the following format. Copy the values for Client ID, Client Secret, Subscription ID, and Directory (tenant) ID from service principal.
   <img width="419" height="142" alt="image" src="https://github.com/user-attachments/assets/bcce4b8d-9c70-48e7-8650-0f02aa87b063" />
3. Secure authentication to Azure services from GitHub Actions workflows can be done using Azure Login action with the service principal details stored in secrets.AZURE_CREDENTIALS .
(https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure-secret)

## Main.tf file
Refer comments in the file.

## Github Workflow to automate Terraform
1.
2. 
