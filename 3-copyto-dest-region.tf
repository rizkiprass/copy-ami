resource "aws_ami_copy" "cp-server-1" {
  name              = "server-1"
  description       = "A copy of ${aws_ami_from_instance.server-1.id} from ${var.src-region}"
  source_ami_id     = aws_ami_from_instance.server-1.id
  source_ami_region = "us-west-2"
  encrypted = "true"

  tags = {
    Name = "server-1",
    Terraform = "Yes",
    Project = "copy-ami"
  }

  provider = aws.dest
}

resource "aws_ami_copy" "cp-server-2" {
  name              = "server-2"
  description       = "A copy of ${aws_ami_from_instance.server-2.id} from ${var.src-region}"
  source_ami_id     = aws_ami_from_instance.server-2.id
  source_ami_region = "us-west-2"
  encrypted = "true"

  tags = {
    Name = "server-2",
    Terraform = "Yes",
    Project = "copy-ami"
  }

  provider = aws.dest
}

resource "aws_ami_copy" "cp-server-3" {
  name              = "server-3"
  description       = "A copy of ${aws_ami_from_instance.server-3.id} from ${var.src-region}"
  source_ami_id     = aws_ami_from_instance.server-3.id
  source_ami_region = "us-west-2"
  encrypted = "true"

  tags = {
    Name = "server-3",
    Terraform = "Yes",
    Project = "copy-ami"
  }

  provider = aws.dest
}