data "aws_ec2_transit_gateway" "tgw" {
  filter {
    name   = "tag:Name"
    values = ["pod${var.pod_number}-tgw"] 
  }
}

data "aws_security_group" "datapath-sg" {
  filter {
    name   = "group-name"
    values = ["pod${var.pod_number}-svpc-aws-datapath-sg"]
  }
}

resource "aws_security_group_rule" "datapath-rule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = ["68.154.48.186/32"]
  security_group_id = data.aws_security_group.datapath-sg.id
}