variable "harness_key" {
  description = "Harness API Key"
  type        = string
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "cluster_name" {
  description = "Name of the existing EKS cluster"
  type        = string
}

data "aws_eks_cluster" "eks" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "eks" {
  name = var.cluster_name
}
