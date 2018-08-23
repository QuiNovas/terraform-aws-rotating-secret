variable "description" {
  default     = ""
  description = "A description of the secret."
  type        = "string"
}

variable "name" {
  description = "Specifies the friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@- Spaces are not permitted."
  type        = "string"
}

variable "rotation_lambda_arn" {
  description = "Specifies the ARN of the Lambda function that can rotate the secret."
  type        = "string"
}

variable "rotation_days" {
  default     = 30
  description = "Specifies the number of days between automatic scheduled rotations of the secret."
  type        = "string"
}

variable "tags" {
  default     = {}
  description = "Specifies a key-value map of user-defined tags that are attached to the secret."
  type        = "map"
}

variable "value" {
  default     = " "
  description = "Specifies text data that you want to encrypt and store in this version of the secret."
  type        = "string"
}
