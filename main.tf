resource "aws_ssm_parameter" "foo" {
  name  =  var.files
  type  = "String"
  value = "barr"
}