# GitHub OIDC bootstrap

Create an AWS IAM role trusted by GitHub's OIDC provider and restrict the trust policy to this exact repository and production environment. Do not store long-lived AWS access keys in GitHub.

The workflow expects a GitHub Environment named `production` with a variable:

- `AWS_ROLE_ARN`

Add required reviewers to the production environment before enabling deployment. The deployment role should have only the permissions needed by this project.
