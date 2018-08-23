resource "aws_kms_key" "secret" {
  description         = "Key for secret ${var.name}"
  enable_key_rotation = true
}

resource "aws_kms_alias" "secret" {
  name          = "alias/${var.name}"
  target_key_id = "${aws_kms_key.secret.key_id}"
}

resource "aws_secretsmanager_secret" "secret" {
  description         = "${var.description}"
  kms_key_id          = "${aws_kms_key.secret.key_id}"
  name                = "${var.name}"
  rotation_lambda_arn = "${var.rotation_lambda_arn}"
  rotation_rules {
    automatically_after_days = "${var.rotation_days}"
  }
  tags                = "${var.tags}"
}

resource "aws_secretsmanager_secret_version" "secret" {
  lifecycle {
    ignore_changes = [
      "secret_string"
    ]
  }
  secret_id     = "${aws_secretsmanager_secret.secret.id}"
  secret_string = "${var.value}"
}
