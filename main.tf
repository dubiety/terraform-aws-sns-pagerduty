data "aws_sns_topic" "pagerduty" {
  count = "${(1 - var.create_sns_topic) * var.create}"
  name  = "${var.sns_topic_name}"
}

resource "aws_sns_topic" "pagerduty" {
  count        = "${var.create_sns_topic * var.create}"
  name         = "${var.sns_topic_name}"
  display_name = "${var.display_name}"
  tags         = "${var.tags}"
}

locals {
  sns_topic_arn = "${element(concat(aws_sns_topic.pagerduty.*.arn, data.aws_sns_topic.pagerduty.*.arn, list("")), 0)}"
}

resource "aws_sns_topic_subscription" "pagerduty" {
  count                  = "${var.create}"
  endpoint               = "${var.pagerduty_endpoint}"
  endpoint_auto_confirms = true
  protocol               = "https"
  topic_arn              = "${local.sns_topic_arn}"
}
