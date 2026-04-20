# Terraform Associate 4-Day Prep

This repo is a 4-day Terraform Associate cram plan.

Use only two modes:

1. Read official docs
2. Run labs immediately after reading

## Official Sources

Start here and stay close to HashiCorp docs:

- Certification overview: https://developer.hashicorp.com/certifications
- Terraform Associate (004) prep: https://developer.hashicorp.com/terraform/tutorials/certification-004
- Terraform language docs: https://developer.hashicorp.com/terraform/language
- Terraform CLI docs: https://developer.hashicorp.com/terraform/cli

Use these topic pages during the 4 days:

- Resources: https://developer.hashicorp.com/terraform/language/resources
- Variables: https://developer.hashicorp.com/terraform/language/values/variables
- Locals: https://developer.hashicorp.com/terraform/language/values/locals
- Expressions: https://developer.hashicorp.com/terraform/language/expressions
- Outputs: https://developer.hashicorp.com/terraform/language/values/outputs
- State: https://developer.hashicorp.com/terraform/language/state
- Modules: https://developer.hashicorp.com/terraform/language/modules
- Provider requirements: https://developer.hashicorp.com/terraform/language/providers/requirements
- Backends: https://developer.hashicorp.com/terraform/language/settings/backends/configuration
- Workspaces: https://developer.hashicorp.com/terraform/cli/workspaces
- CLI commands: https://developer.hashicorp.com/terraform/cli/commands
- State commands: https://developer.hashicorp.com/terraform/cli/commands/state
- Import: https://developer.hashicorp.com/terraform/cli/commands/import
- Data sources: https://developer.hashicorp.com/terraform/language/data-sources

## Rules

- Read only official docs first.
- Do not spend time on cloud-specific complexity unless a lab needs it.
- After every reading block, run a lab.
- Do not memorize commands without understanding state and plan behavior.

## Day 1

### Read

- Terraform language docs overview
- Terraform CLI docs overview
- Resources page
- CLI commands page for `init`, `fmt`, `validate`, `plan`, `apply`, `destroy`

### Lab

Build one minimal Terraform configuration with:

- one provider
- one resource
- one output

Run:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform show
terraform output
terraform destroy
```

### Done When

- You can explain what `init` downloads or prepares
- You can explain the difference between `validate`, `plan`, and `apply`
- You can explain what changed locally and remotely after each command

## Day 2

### Read

- Variables
- Locals
- Expressions
- Outputs
- State
- State commands

### Lab

Extend the Day 1 lab so it includes:

- input variables
- one local value
- outputs based on expressions
- repeated resources or values using `count` or `for_each`

Run:

```bash
terraform fmt
terraform validate
terraform plan
terraform apply
terraform state list
terraform state show <resource-address>
terraform destroy
```

### Done When

- You can explain why Terraform needs state
- You can explain `count` vs `for_each`
- You can read a resource address from state output and know what it points to

## Day 3

### Read

- Modules
- Provider requirements
- Backends
- Workspaces

### Lab

Refactor the existing lab into:

- one root module
- one child module
- explicit provider version requirements

Inspect the files created by `terraform init`, especially the lock file.

### Done When

- You can explain root module vs child module
- You can explain why provider versions should be pinned
- You can explain why workspaces are not a full environment strategy

## Day 4

### Read

- Certification prep page
- Import
- Data sources
- Review CLI and state command docs again

### Lab

Do one final run without notes:

1. Build a small configuration from memory
2. Run `terraform init`
3. Run `terraform plan` and explain every action
4. Run `terraform apply`
5. Inspect outputs and state
6. Run `terraform destroy`

### Done When

- You can explain replacement vs in-place update
- You can explain drift
- You can explain when to use a data source instead of managing a resource
- You can explain what Terraform relies on during destroy

## Command List To Know

- `terraform init`
- `terraform fmt`
- `terraform validate`
- `terraform plan`
- `terraform apply`
- `terraform destroy`
- `terraform show`
- `terraform output`
- `terraform state list`
- `terraform state show`
- `terraform import`
- `terraform workspace list`
- `terraform workspace select`

## Repo Direction

If you want to turn this into a hands-on repo, create labs in this order:

- `01-basics`
- `02-variables-state`
- `03-modules`
- `04-final-review`
