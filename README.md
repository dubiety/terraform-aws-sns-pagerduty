# terraform-aws-sns-pagerduty

[![Build Status](https://travis-ci.com/dubiety/terraform-aws-sns-pagerduty.svg?branch=master)](https://travis-ci.org/dubiety/terraform-aws-sns-pagerduty)
[![Latest Release](https://img.shields.io/github/release/dubiety/terraform-aws-sns-pagerduty.svg)](https://github.com/dubiety/terraform-aws-sns-pagerduty/releases)

Terraform module that integrate PagerDuty to SNS topic.
It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | Whether to create all the resources | string | `"true"` | no |
| create\_sns\_topic | Whether to create new SNS topic | string | `"true"` | no |
| display\_name | The display name for the SNS topic | string | `""` | no |
| pagerduty\_endpoint | The PagerDuty HTTPS endpoint where SNS notifications will be sent to | string | n/a | yes |
| sns\_topic\_name | The name of SNS topic to create or reference | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| sns\_topic\_arn | The ARN of the SNS topic |

## Examples

See the [`examples/`](examples/) directory for working examples.
  - [Use existing SNS topic](examples/simple/)
  - [create SNS and hook to PagerDuty](examples/create-sns/)

One can also simply assign the source from [terraform registry](https://registry.terraform.io/modules/dubiety/sns-pagerduty/aws/):

```hcl
module "sns-pagerduty" {
  source  = "dubiety/sns-pagerduty/aws"
  version = "0.1.0"

  create             = 1
  create_sns_topic   = 1
  pagerduty_endpoint = "https://events.pagerduty.com/integration/INTEGRATION_KEY/enqueue"
  sns_topic_name     = "cloudwatch-incidents-demo"
}
```

## Share the Love

Like this project? Please give it a ★ on [our GitHub](https://github.com/dubiety/terraform-aws-sns-pagerduty)!

## Help

**Got a question?**

File a GitHub [issue](https://github.com/dubiety/terraform-aws-sns-pagerduty/issues).

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/dubiety/terraform-aws-sns-pagerduty/issues) to report any bugs or file feature requests.

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
