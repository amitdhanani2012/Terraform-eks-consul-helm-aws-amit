#EBS Add-on
resource "aws_eks_addon" "ebs" {
  cluster_name  = aws_eks_cluster.my_cluster.name
  addon_name    = "aws-ebs-csi-driver"
  resolve_conflicts_on_create = "OVERWRITE"
  depends_on    = [aws_eks_cluster.my_cluster, aws_eks_node_group.my_node_group]
}


#VPC-CNI Add-on
resource "aws_eks_addon" "vpc_cni" {
  cluster_name                = aws_eks_cluster.my_cluster.name
  addon_name                  = "vpc-cni"
  resolve_conflicts_on_create = "OVERWRITE"
  depends_on                  = [aws_eks_cluster.my_cluster, aws_eks_node_group.my_node_group]
}
