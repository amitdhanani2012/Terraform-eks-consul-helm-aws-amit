resource "aws_key_pair" "eks_nodes" {
   key_name = "eks-ec2-amit1-key"
   public_key = "keyvalue" 
}
