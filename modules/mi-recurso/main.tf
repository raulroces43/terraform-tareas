resource "aws_s3_bucket" "bucket_modulo" {
  bucket = var.nombre_bucket

  tags = {
    Entorno = "Modulo"
  }
}
