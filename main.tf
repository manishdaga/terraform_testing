variable "file_change" {
  type    = list(string)
  default = []
}
resource "null_resource" "run_glue_job" {
  provisioner "local-exec" {
    command = "aws glue start-job-run --job-name run_job_from_terraform --arguments '--config_file=${var.file_change}'"
  }
}