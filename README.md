1. This is repo of POC for Terraform eks setup with consul installation on eks cluster on consul namespace
2. 3 availability zone on us-east-1
3. 1 vpc 3 public and private subnets
4. Add ons on eks - ebs csi driver and vpc cni
5. Helm provider to install consul helm chart - templates directory has values.yaml for helm. apiGateway, Consul ui, mesh gateway, terminatingGateways, etc enabled. you can change it to enable disable certain thing.
6. Terraform cloud with aws-amit organization amit-aws-test1 workspace, code run on vm and state file is saved on Terraform cloud

