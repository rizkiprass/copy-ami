resource "aws_ami_from_instance" "server-1" {
  name                    = "server-1"
  source_instance_id      = "i-0bf9ec931d6ba6ba2"
  snapshot_without_reboot = "true"

  tags = {
    Name = "server-1",
    Terraform = "Yes",
    Project = "copy-ami"
  }
}

resource "aws_ami_from_instance" "server-2" {
  name                    = "server-2"
  source_instance_id      = "i-06bc39991c41b1576"
  snapshot_without_reboot = "true"

  tags = {
    Name = "server-2",
    Terraform = "Yes",
    Project = "copy-ami"
  }
}

resource "aws_ami_from_instance" "server-3" {
  name                    = "server32"
  source_instance_id      = "i-0be13665461f5fea7"
  snapshot_without_reboot = "true"

  tags = {
    Name = "server-3",
    Terraform = "Yes",
    Project = "copy-ami"
  }
}