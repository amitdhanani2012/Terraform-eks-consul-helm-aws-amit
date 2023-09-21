#EKS Cluster & Node Group Variables
variable "aws_region" {
  type    = string
  default = "us-east-1"   # Update your AWS Region name here
}

variable "eks_cluster_name" {
  type    = string
  default = "amit-aws-test1-eks"   # Name of your EKS Cluster
}

variable "k8s_version" {
  type    = string
  default = "1.27"  # Set your desired K8s Version for your EKS cluster
}



variable "nodegroup_name" {
  type    = string
  default = "amit-aws-test1-eks-node-group"  # Name of your NodeGroup
}

variable "scaling" {
  type = map(number)
  default = {
    "desired_size" = 3  # Set the desired number of Nodes in your Node Group
    "max_size"     = 4  # Set the required maximum number of Nodes in your Node Group
    "min_size"     = 1  # Set the required minimum number of Nodes in your Node Group
  }
}


variable "namespace" {
  type    = string
  default = "consul"  # Set the name of your namespace where the Consul will be installed
}

variable "max_history" {
  type    = number
  default = 20  # Set the value for Maximum number of release versions stored per release
}

variable "timeout" {
  type    = number
  default = 600  # Set the time in seconds to wait for any individual Kubernetes operation (like Jobs for hooks)
}

variable "vaules_file" {
  type    = string
  default = "templates/values.yaml"  # Set the values.yaml filename along with path like - "<file_path>/values.yaml"
}
