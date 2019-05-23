variable "create" {
  description = "Whether to create all the resources"
  default     = true
}

variable "create_sns_topic" {
  description = "Whether to create new SNS topic"
  default     = true
}

variable "pagerduty_endpoint" {
  description = "The PagerDuty HTTPS endpoint where SNS notifications will be sent to"
}

variable "sns_topic_name" {
  description = "The name of SNS topic to create or reference"
}

variable "display_name" {
  description = "The display name for the SNS topic"
  default     = ""
}
