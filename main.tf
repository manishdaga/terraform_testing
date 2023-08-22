variable "file_change" {
  type    = string
  default = ""
}
resource "null_resource" "run_glue_job" {
  provisioner "local-exec" {
    command = "aws glue start-job-run --job-name add_table_toDMS_new_code --arguments 'config_file_path=${var.file_change}'"
  }
}