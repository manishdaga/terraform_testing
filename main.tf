variable "file_change" {
  type    = string
  default = ""
}
resource "null_resource" "run_glue_job" {
  provisioner "local-exec" {
    command = "aws glue start-job-run --job-name example --arguments '--config=${var.file_change}'"
  }
}