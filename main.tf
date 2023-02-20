resource "aws_ssm_para" "foo" {
  name = "foo"
  type = "String"
  value = "bar"
}