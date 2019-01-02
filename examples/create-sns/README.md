Create SNS topic and integrate with PagerDuty
========================

Configuration in this directory create a new SNS topic that sends messages to PageDuty endpoint

Usage
=====

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.

## Outputs

|      Name     |       Description        |
|---------------|--------------------------|
| sns_topic_arn | The ARN of the SNS topic |
