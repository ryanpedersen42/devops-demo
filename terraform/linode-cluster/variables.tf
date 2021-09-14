    variable "token" {
      description = "Your Linode API Personal Access Token. (required)" # secret, so definitely dont hard code!!
      type        = string
    }

    variable "k8s_version" {
      description = "The Kubernetes version to use for this cluster. (required)"
      default     = "1.20"
      type        = string
    }

    variable "label" {
      description = "The unique label to assign to this cluster. (required)"
      default     = "default-lke-cluster"
    }

    variable "region" {
      description = "The region where your cluster will be located. (required)"
      default     = "us-east"
    }

    variable "tags" {
      description = "Tags to apply to your cluster for organizational purposes. (optional)"
      type        = list(string)
      default     = ["test-tag"]
    }

    variable "pools" {
      description = "The Node Pool specifications for the Kubernetes cluster. (required)"
      type = list(object({
        type = string
        count = number
      }))
      default = [
        {
          type = "g6-standard-4"
          count = 1
        },
        {
          type = "g6-standard-8"
          count = 1
        }
      ]
    }
    