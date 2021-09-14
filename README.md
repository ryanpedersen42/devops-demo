# Devops Demo
Demo k8s project with terraform and helm in CircleCI

## Provision cluster

**Before doing these steps, update variables.tf and main.tf in `terraform/linode-cluster`**
```
cd terraform/linode-cluster
terraform init
terraform plan
terraform apply
```

## Tear down cluster

```
terraform destroy
```

## Connect to cluster and install helm chart
Options:
* `helm install <deploy-name> --set image.tag=<tag-here>,image.repository=<repository> ./helm-charts/react-app-chart`
* Use `helm/install-helm-chart` orb command

## Upgrade helm chart as part of CI/CD
* Current setup