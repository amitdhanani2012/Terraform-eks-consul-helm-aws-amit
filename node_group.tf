resource "aws_eks_node_group" "my_node_group" {
  cluster_name    = aws_eks_cluster.my_cluster.name
  node_group_name = var.nodegroup_name
  subnet_ids      = module.vpc.private_subnets
  node_role_arn   = aws_iam_role.eks_nodegroup.arn
      
  remote_access {
    ec2_ssh_key     = aws_key_pair.eks_nodes.id
  }   
  

  scaling_config {
    desired_size = var.scaling["desired_size"]
    max_size     = var.scaling["max_size"]
    min_size     = var.scaling["min_size"]
  }

  depends_on = [aws_eks_cluster.my_cluster, aws_iam_role_policy_attachment.eks_nodegroup]
}
