provider "aws" {
  region = "us-west-2"
}

module "notify_pagerduty" {
  source           = "../.."
  create_sns_topic = 0
  sns_topic_name   = "some-existed-sns-topic"

  pagerduty_endpoint = "https://events.pagerduty.com/integration/INTEGRATION_KEY/enqueue"
}
