variable "create" {
  description = "Whether to create all the resources"
  type        = bool
  default     = true
}

variable "create_sns_topic" {
  description = "Whether to create new SNS topic"
  type        = bool
  default     = true
}

variable "pagerduty_endpoint" {
  description = "The PagerDuty HTTPS endpoint where SNS notifications will be sent to"
  type        = string
}

variable "sns_topic_name" {
  description = "The name of SNS topic to create or reference"
  type        = string
}

variable "display_name" {
  description = "The display name for the SNS topic"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to the sns_topic resource"
  type        = map(string)
  default     = {}
}
