output "arn" {
  description = "Amazon Resource Name (ARN) of the secret."
  value       = "${aws_secretsmanager_secret.secret.arn}"
}

output "id" {
  description = "Amazon Resource Name (ARN) of the secret."
  value       = "${aws_secretsmanager_secret.secret.id}"
}

output "kms_key_arn" {
  description = "The Amazon Resource Name (ARN) of the key used to encrypt the secret."
  value       = "${aws_kms_key.secret.arn}"
}
