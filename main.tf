variable "file_change" {
  type = string
}
resource "aws_ssm_parameter" "foo" {
  name  =  var.file_change
  type  = "String"
  value = "barr"
}