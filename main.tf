data "aws_sns_topic" "pagerduty" {
  count = 1 - (var.create_sns_topic ? 1 : 0) * (var.create ? 1 : 0)
  name  = var.sns_topic_name
}

resource "aws_sns_topic" "pagerduty" {
  count             = (var.create_sns_topic ? 1 : 0) * (var.create ? 1 : 0)
  name              = var.sns_topic_name
  display_name      = var.display_name
  kms_master_key_id = var.kms_master_key_id
  tags              = var.tags
}

locals {
  sns_topic_arn = coalesce(aws_sns_topic.pagerduty.*.arn[0], data.aws_sns_topic.pagerduty.*.arn[0])
}

resource "aws_sns_topic_subscription" "pagerduty" {
  count                  = var.create ? 1 : 0
  endpoint               = var.pagerduty_endpoint
  endpoint_auto_confirms = true
  protocol               = "https"
  topic_arn              = local.sns_topic_arn
}
