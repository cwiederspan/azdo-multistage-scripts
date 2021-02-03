# Local Testing

To test this Terraform locally, you can follow these instructions from in your
local development environment.

## Terraform Init

```bash

# Use remote storage
terraform init --backend-config ./backend-secrets.tfvars

```

## Terraform Plan and Apply

```bash

# Run the plan to see the changes
terraform plan \
  -var resource_group_name=cdw-myresourcegroup-test \
  -var location=westus2

# Apply the script with the specified variable values
terraform plan \
  -var resource_group_name=cdw-myresourcegroup-test \
  -var location=westus2

```
