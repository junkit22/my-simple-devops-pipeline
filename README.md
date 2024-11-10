# my-simple-devops-pipeline

1. Create a new Github repository called "My-Simple-Devops-Pipeline" and clone locally.

2. Add repository secret for AWS credential in github setting.
3. Add repository variable for AWS region in github setting.
4. Set protection to main branch.
5. Use terraform code to create a simple S3 bucket.

- Create terraform code inside a directory called terraform folder that links to our backend s3 bucket for ce7 for storing tf state file
- Create all the necessary code (backend.tf, provider.tf, varaible.tf and main.tf) for creating the S3 bucket.
- Create a .github/workflows folder with 2 files - ci.yaml, cd.yaml and tf_destroy.yaml.

- ci.yaml should run on a pull request creation to main/feature branch and run simple checks like terraform plan, terraform validate, terraform fmt check and any other checks you think is needed.
- cd.yaml should run 2 things after a merge to the main/feature branch terraform plan and terraform apply 
--auto-approve.
- tf_destroy.yaml should trigger manually to destroy the S3 bucket created.
- All yaml files should include a summary status of the terraform run.
-Upload your local git repository to github for testing.