<h1>Helm Charts</h1>

> Collection of some tools and apps that I maintain, ready to launch on [Kubernetes](https://kubernetes.io/) using [Helm](https://helm.sh/).

![CI](https://github.com/rm3l/helm-charts/workflows/CI/badge.svg)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/rm3l)](https://artifacthub.io/packages/search?repo=rm3l)
[![dev-feed](https://img.shields.io/badge/dev--feed-0.19.0-blue)](https://artifacthub.io/packages/helm/rm3l/dev-feed)
[![ghost-export-to-s3](https://img.shields.io/badge/ghost--export--to--s3-0.17.1-blue)](https://artifacthub.io/packages/helm/rm3l/ghost-export-to-s3)
[![mac-oui](https://img.shields.io/badge/mac--oui-1.16.0-blue)](https://artifacthub.io/packages/helm/rm3l/mac-oui)
[![service-names-port-numbers](https://img.shields.io/badge/service--names--port--numbers-0.17.1-blue)](https://artifacthub.io/packages/helm/rm3l/service-names-port-numbers)

- [TL;DR](#tldr)
- [Charts](#charts)
  - [dev-feed](#dev-feed)
  - [ghost-export-to-s3](#ghost-export-to-s3)
  - [mac-oui](#mac-oui)
  - [service-names-port-numbers](#service-names-port-numbers)
- [Developed by](#developed-by)
- [License](#license)

## TL;DR

```bash
$ # Add Helm Chart Repo
$ helm repo add rm3l https://helm-charts.rm3l.org

$ # Search repo
$ helm search repo rm3l

$ # Install a given Chart as a Release
$ helm install my-release rm3l/<chart>
```

## Charts

### dev-feed

> GraphQL-based API exposing a list of daily curated content from top engineering blogs and articles.
> [https://github.com/rm3l/dev-feed](https://github.com/rm3l/dev-feed)

See [https://github.com/rm3l/helm-charts/blob/main/charts/dev-feed/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/dev-feed/README.md) for further details.

### ghost-export-to-s3

> Automated backups of headless Ghost Blogs to AWS S3.
> [https://rm3l.org/leveraging-kubernetes-cronjobs-for-automated-backups-of-a-headless-ghost-blog-to-aws-s3/](https://rm3l.org/leveraging-kubernetes-cronjobs-for-automated-backups-of-a-headless-ghost-blog-to-aws-s3/)

See [https://github.com/rm3l/helm-charts/blob/main/charts/ghost-export-to-s3/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/ghost-export-to-s3/README.md) for further details.

### mac-oui

> Microservice for looking up manufacturers from MAC addresses.
> [https://github.com/rm3l/mac-oui](https://github.com/rm3l/mac-oui)

See [https://github.com/rm3l/helm-charts/blob/main/charts/mac-oui/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/mac-oui/README.md) for further details.

### service-names-port-numbers

> Microservice (GraphQL API) against the IANA Service Names And Port Numbers Registry.
> [https://github.com/rm3l/service-names-port-numbers](https://github.com/rm3l/service-names-port-numbers)

See [https://github.com/rm3l/helm-charts/blob/main/charts/service-names-port-numbers/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/service-names-port-numbers/README.md) for further details.


## Developed by

* Armel Soro
  * [keybase.io/rm3l](https://keybase.io/rm3l)
  * [rm3l.org](https://rm3l.org) - &lt;apps+helm@rm3l.org&gt; - [@rm3l](https://twitter.com/rm3l)
  * [paypal.me/rm3l](https://paypal.me/rm3l)
  * [coinbase.com/rm3l](https://www.coinbase.com/rm3l)

## License

    MIT License

    Copyright (c) 2021 Armel Soro

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
