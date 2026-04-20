# Terraform Associate Study Plan

This workspace is for hands-on Terraform training aimed at the HashiCorp Terraform Associate certification.

The goal is not just to memorize commands. The goal is to understand how Terraform behaves: state, providers, planning, apply workflow, module usage, variables, outputs, and common operational patterns.

## Target

Prepare for the current Terraform Associate exam version.

Before starting, verify the latest official exam blueprint from HashiCorp because objectives and weightings can change.

## Study Approach

Use three tracks in parallel:

1. Learn the concept.
2. Build a small example by hand.
3. Explain back what Terraform is doing and why.

If you cannot explain why Terraform wants to create, update, replace, or destroy something, you do not know the topic well enough yet.

## Core Topics To Master

### 1. Terraform Basics

- What Terraform is and when to use it
- Infrastructure as Code principles
- Declarative vs imperative workflows
- Providers, resources, data sources, variables, outputs
- `terraform init`, `validate`, `fmt`, `plan`, `apply`, `destroy`

### 2. State

- What state is and why Terraform needs it
- Local vs remote state
- Sensitive data considerations
- State locking
- `terraform show`
- `terraform state list`
- `terraform state show`
- `terraform state rm`
- `terraform import`

### 3. Terraform Language

- Input variables and defaults
- Output values
- Locals
- Resource addressing
- Expressions and functions
- Conditionals
- `count` and `for_each`
- Dynamic blocks
- Dependencies and `depends_on`
- Lifecycle meta-arguments

### 4. Modules

- Why modules matter
- Root module vs child module
- Module inputs and outputs
- Local modules vs registry modules
- Reusability and composition
- Version pinning

### 5. Providers and Dependency Management

- Required providers
- Version constraints
- Provider configuration
- Plugin installation behavior
- `.terraform.lock.hcl`

### 6. Planning and Change Behavior

- Refresh behavior
- Execution plan meaning
- In-place update vs replacement
- Unknown values during plan
- Drift detection basics

### 7. Collaboration and Operations

- Remote backends
- Team workflows
- Workspace purpose and limits
- When to split configurations
- Basic CI/CD usage with Terraform

### 8. Security and Best Practices

- Keep secrets out of code
- Use remote state securely
- Prefer variables and secret stores over hardcoding
- Pin provider and module versions
- Review plans before apply
- Keep modules small and intentional

## Four-Week Plan

## Week 1: Foundation

Study:

- Terraform workflow
- Providers, resources, variables, outputs
- HCL syntax

Practice:

- Write a minimal configuration
- Run `terraform fmt`
- Run `terraform validate`
- Run `terraform plan`
- Run `terraform apply`
- Run `terraform destroy`

You should be able to answer:

- What does `init` actually do?
- What is the difference between `plan` and `apply`?
- Why is Terraform called declarative?

## Week 2: Language and State

Study:

- Expressions
- Functions
- Locals
- `count` vs `for_each`
- State internals and commands

Practice:

- Add variables with validation
- Use locals to simplify expressions
- Create multiple resources with `count` and `for_each`
- Inspect state with `terraform state list` and `terraform state show`
- Import an existing object into state if your lab setup allows it

You should be able to answer:

- Why is state critical?
- When should `for_each` be preferred over `count`?
- What risks come with manual state changes?

## Week 3: Modules and Collaboration

Study:

- Module structure
- Module inputs and outputs
- Remote state concepts
- Backend basics
- Workspace usage

Practice:

- Extract repeated code into a child module
- Consume outputs from that module
- Add provider version constraints
- Explain when workspaces help and when separate state files are better

You should be able to answer:

- What makes a module good?
- What belongs in a root module vs a child module?
- Why should versions be pinned?

## Week 4: Exam Preparation

Study:

- Review weak areas
- Revisit official exam objectives
- Focus on operational behavior and terminology

Practice:

- Build one small environment from scratch without notes
- Read plan output line by line and explain each action
- Do timed review sessions on commands, state, modules, and workflows

You should be able to answer:

- What causes resource replacement?
- What is drift?
- How does Terraform determine dependency order?

## Recommended Hands-On Sequence

Build labs in this order:

1. Single resource with variables and outputs
2. Multiple resources with references between them
3. Use locals and built-in functions
4. Add `count`
5. Replace `count` with `for_each`
6. Extract a reusable module
7. Add remote backend concepts
8. Simulate drift and inspect plan behavior

## Command Checklist

You should be comfortable with these commands and what they do:

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

## Study Rules

- Do not memorize command names without understanding state behavior.
- Do not skip plan output analysis.
- Do not rely only on videos or reading. Build examples.
- Do not treat workspaces as a universal environment strategy.
- Do not hardcode secrets into Terraform code or variable files.

## Self-Test Prompts

If you can answer these clearly, you are progressing well:

- What problem does Terraform state solve?
- What is the difference between a provider and a provisioner?
- Why might a resource be replaced instead of updated?
- What is the purpose of a module?
- What does `.terraform.lock.hcl` protect you from?
- When would you use a data source instead of a resource?
- Why is remote state preferred for teams?

## Notes For This Repo

This repository currently starts as notes only. It can be expanded into a lab repository with folders such as:

- `01-basics`
- `02-variables-and-outputs`
- `03-state`
- `04-expressions`
- `05-modules`
- `06-workspaces`
- `07-exam-review`

## Next Step

The most useful next step is to turn this plan into actual exercises so each topic has a runnable Terraform example.

## Day 1 Plan

Day 1 is about getting the Terraform workflow into muscle memory.

### Goal

By the end of Day 1, you should be able to explain and run the basic lifecycle:

- `terraform init`
- `terraform fmt`
- `terraform validate`
- `terraform plan`
- `terraform apply`
- `terraform destroy`

### Concepts To Learn Today

- What Infrastructure as Code means
- Why Terraform is declarative
- What a provider does
- What a resource block represents
- The difference between configuration, state, and real infrastructure

### Hands-On Outcome

You should finish Day 1 with one minimal Terraform configuration and a clear explanation of what each command changed locally or remotely.

### Day 1 Schedule

1. Read for 20 minutes
2. Build for 45 minutes
3. Inspect and explain for 20 minutes
4. Review for 15 minutes

### Step 1: Read

Read enough to answer these without guessing:

- What problem does Terraform solve?
- Why is the workflow centered around plan before apply?
- What is the role of a provider plugin?

### Step 2: Build

Create a minimal example with:

- one provider
- one resource
- one output

Your focus is not cloud complexity. Your focus is understanding the workflow and the file structure Terraform creates locally.

### Step 3: Run The Workflow

Run these commands in order:

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

After each command, answer:

- What changed?
- Did Terraform change local files, remote infrastructure, or both?
- What would happen if this step were skipped?

### Step 4: Review Questions

You should be able to answer these by the end of Day 1:

- What exactly does `terraform init` download or prepare?
- Why does `terraform validate` not replace `terraform plan`?
- What is the difference between `terraform show` and `terraform output`?
- What does `terraform destroy` use to know what to remove?

### Day 1 Success Criteria

Day 1 is complete only if you can explain:

- why Terraform needs state
- why plans should be reviewed before apply
- why Terraform is declarative rather than imperative
- what files appeared in the directory after `init` and why

### Best Next Move After Day 1

When Day 1 is done, Day 2 should introduce variables, outputs, and simple references between resources.
