resource "aws_eip" "this" {
  instance = var.instance_id
  vpc      = true

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
}
