# Deployment design

The pipeline uses immutable image tags based on the Git commit SHA, so a deployment identifies exactly which source revision is running in ECS.

Pull requests run tests and Terraform validation. Only a push to `main` can deploy, and production deployment is attached to a GitHub Environment so approval rules can be added.
