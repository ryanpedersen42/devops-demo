    variable "token" {
      description = "Your Linode API Personal Access Token. (required)" # secret, so definitely dont hard code!!
      type        = string
    }

    variable "k8s_version" {
      description = "The Kubernetes version to use for this cluster. (required)"
<<<<<<< HEAD
      default     = "1.20"
      type        = string
=======
      default = "1.18"
>>>>>>> 8500fcd43182be890e7c22f60a622de1d97d663c
    }

    variable "label" {
      description = "The unique label to assign to this cluster. (required)"
<<<<<<< HEAD
      default     = "default-lke-cluster"
=======
      default = "demo-lke-cluster"
>>>>>>> 8500fcd43182be890e7c22f60a622de1d97d663c
    }

    variable "region" {
      description = "The region where your cluster will be located. (required)"
<<<<<<< HEAD
      default     = "us-east"
=======
      default = "eu-west"
>>>>>>> 8500fcd43182be890e7c22f60a622de1d97d663c
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
<<<<<<< HEAD
        {
          type = "g6-standard-8"
          count = 1
        }
=======
>>>>>>> 8500fcd43182be890e7c22f60a622de1d97d663c
      ]
    }
    