# terraform-aws-sns-pagerduty

[![Build Status](https://travis-ci.com/dubiety/terraform-aws-sns-pagerduty.svg?branch=master)](https://travis-ci.org/dubiety/terraform-aws-sns-pagerduty)
[![Latest Release](https://img.shields.io/github/release/dubiety/terraform-aws-sns-pagerduty.svg)](https://github.com/dubiety/terraform-aws-sns-pagerduty/releases)

Terraform module that integrate PagerDuty to SNS topic.
It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| `create` | Whether to create all the resources | string | `1` | no |
| `create_sns_topic` | Whether to create new SNS topic or use the existed one | string | `1` | no |
| `pagerduty_endpoint` | PagerDuty HTTPS endpoint where SNS will be sent to | string | - | yes |
| `sns_topic_name` | The name of SNS topic to create or reference | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| `sns_topic_arn` | The ARN of the SNS topic |

## Examples

See the [`examples/`](examples/) directory for working examples.
  - [Use existing SNS topic](examples/simple/)
  - [create SNS and hook to PagerDuty](examples/create-sns/)

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
