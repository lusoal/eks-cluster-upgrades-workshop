################################################################################
# Cluster
################################################################################
output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = module.eks.cluster_arn
}

output "cluster_name" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "oidc_provider" {
  description = "The OIDC Provider"
  value       = module.eks.cluster_oidc_issuer_url
}

output "oidc_provider_arn" {
  description = "The ARN of the OIDC Provider"
  value       = module.eks.oidc_provider_arn
}

################################################################################
# Karpenter
################################################################################
output "karpenter_irsa" {
  value = module.karpenter_irsa_role.iam_role_arn
}

output "karpenter_instance_profile" {
  value = aws_iam_instance_profile.karpenter_instance_profile.name
}