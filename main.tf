module "test-module-registry" {
  source  = "loren.harness.io/WqS38aeyQjayoqy6mzwceA/test-module-registry-another/harness"
  version = "v1.0.9"

  num_resources = 3
}

module "karpenter" {
  source  = "loren.harness.io/WqS38aeyQjayoqy6mzwceA/eks/aws//modules/karpenter"
}
