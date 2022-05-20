# Create YDB (dedicated or serverless)

## git clone git@github.com:SultankaReal/terraform-create-ydb-modules.git
## !!change the names of the resources in all files before creating YDB!!

### 1) In order to create both serverless AND dedicated YDB resource you should:
### - define variables in all variables.tf files in all folders
### - terraform init
### - terraform validate
### - terraform plan
### - terraform apply


### 2) In order to create serverless OR dedicated YDB resource you should:
### - define variables in variables.tf files in the root and appropriate folders
### - terraform init
### - terraform validate
### - terraform plan
### - terraform apply
