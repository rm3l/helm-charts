<h1>Helm Charts</h1>

> Collection of Helm Charts that I personally use, ready to launch on [Kubernetes](https://kubernetes.io/) using [Helm](https://helm.sh/).
> Some of the services deployed are maintained by me. Others are not.

![CI](https://github.com/rm3l/helm-charts/workflows/CI/badge.svg)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/rm3l)](https://artifacthub.io/packages/search?repo=rm3l)
[![adguard-home](https://img.shields.io/badge/adguard--home-0.19.0-blue)](https://artifacthub.io/packages/helm/rm3l/adguard-home)
[![atuin](https://img.shields.io/badge/atuin-0.10.0-blue)](https://artifacthub.io/packages/helm/rm3l/atuin)
[![dev-feed](https://img.shields.io/badge/dev--feed-3.1.1-blue)](https://artifacthub.io/packages/helm/rm3l/dev-feed)
[![ghost-export-to-s3](https://img.shields.io/badge/ghost--export--to--s3-0.26.0-blue)](https://artifacthub.io/packages/helm/rm3l/ghost-export-to-s3)
[![kresus](https://img.shields.io/badge/kresus-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/kresus)
[![mac-oui](https://img.shields.io/badge/mac--oui-1.25.0-blue)](https://artifacthub.io/packages/helm/rm3l/mac-oui)
[![memos](https://img.shields.io/badge/memos-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/memos)
[![networking-toolbox](https://img.shields.io/badge/networking--toolbox-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/networking-toolbox)
[![ntfy](https://img.shields.io/badge/ntfy-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/ntfy)
[![olivetin](https://img.shields.io/badge/olivetin-0.2.0-blue)](https://artifacthub.io/packages/helm/rm3l/olivetin)
[![service-names-port-numbers](https://img.shields.io/badge/service--names--port--numbers-0.26.1-blue)](https://artifacthub.io/packages/helm/rm3l/service-names-port-numbers)
[![wallos](https://img.shields.io/badge/wallos-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/wallos)
[![wg-easy](https://img.shields.io/badge/wg--easy-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/wg-easy)

- [TL;DR](#tldr)
- [Charts](#charts)
  - [adguard-home](#adguard-home)
  - [atuin](#atuin)
  - [dev-feed](#dev-feed)
  - [ghost-export-to-s3](#ghost-export-to-s3)
  - [kresus](#kresus)
  - [mac-oui](#mac-oui)
  - [memos](#memos)
  - [ntfy](#ntfy)
  - [olivetin](#olivetin)
  - [service-names-port-numbers](#service-names-port-numbers)
  - [wallos](#wallos)
  - [wg-easy](#wg-easy)
- [Developed by](#developed-by)
- [License](#license)

## TL;DR

```bash
# Add Helm Chart Repo
helm repo add rm3l https://helm-charts.rm3l.org

# Search repo
helm search repo rm3l

# Install a given Chart as a Release
helm install my-release rm3l/<chart>
```

## Charts

### adguard-home

> Unofficial Chart for Adguard Home, the network-wide ad and tracking blocker.
> This Chart also provides automated backups of Adguard Home to services like AWS S3.
> [https://github.com/AdguardTeam/AdGuardHome](https://github.com/AdguardTeam/AdGuardHome)

See [https://github.com/rm3l/helm-charts/blob/main/charts/adguard-home/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/adguard-home/README.md) for further details.

### atuin

> Unofficial Chart for Atuin, the magical shell history.
> The server provides fully encrypted synchronization of the shell history across machines.
> [https://github.com/atuinsh/atuin](https://github.com/atuinsh/atuin)

See [https://github.com/rm3l/helm-charts/blob/main/charts/atuin/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/atuin/README.md) for further details.

### dev-feed

> GraphQL-based API exposing a list of daily curated content from top engineering blogs and articles.
> [https://github.com/rm3l/dev-feed](https://github.com/rm3l/dev-feed)

See [https://github.com/rm3l/helm-charts/blob/main/charts/dev-feed/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/dev-feed/README.md) for further details.

### ghost-export-to-s3

> Automated backups of headless Ghost Blogs to AWS S3.
> [https://armel.soro.io/leveraging-kubernetes-cronjobs-for-automated-backups-of-a-headless-ghost-blog-to-aws-s3/](https://armel.soro.io/leveraging-kubernetes-cronjobs-for-automated-backups-of-a-headless-ghost-blog-to-aws-s3/)

See [https://github.com/rm3l/helm-charts/blob/main/charts/ghost-export-to-s3/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/ghost-export-to-s3/README.md) for further details.

### kresus

> Open-source libre self-hosted personal finance manager.
> [https://github.com/kresusapp/kresus](https://github.com/kresusapp/kresus)

See [https://github.com/rm3l/helm-charts/blob/main/charts/kresus/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/kresus/README.md) for further details.

### mac-oui

> Microservice for looking up manufacturers from MAC addresses.
> [https://github.com/rm3l/mac-oui](https://github.com/rm3l/mac-oui)

See [https://github.com/rm3l/helm-charts/blob/main/charts/mac-oui/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/mac-oui/README.md) for further details.

### memos

> Unofficial Chart for memos, an open-source, lightweight note-taking solution.
> [https://github.com/usememos/memos](https://github.com/usememos/memos)

See [https://github.com/rm3l/helm-charts/blob/main/charts/memos/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/memos/README.md) for further details.

### ntfy

> Unofficial Chart for ntfy, a simple HTTP-based [pub-sub](https://en.wikipedia.org/wiki/Publish%E2%80%93subscribe_pattern) notification service.
> This Chart also provides automated backups of ntfy to services like AWS S3.
> [https://github.com/binwiederhier/ntfy](https://github.com/binwiederhier/ntfy)

See [https://github.com/rm3l/helm-charts/blob/main/charts/ntfy/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/ntfy/README.md) for further details.

### olivetin

> Unofficial Chart for OliveTin, a tool that gives safe and simple access to predefined shell commands from a web interface.
> [https://github.com/OliveTin/OliveTin](https://github.com/OliveTin/OliveTin)

See [https://github.com/rm3l/helm-charts/blob/main/charts/olivetin/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/olivetin/README.md) for further details.

### service-names-port-numbers

> Microservice (GraphQL API) against the IANA Service Names And Port Numbers Registry.
> [https://github.com/rm3l/service-names-port-numbers](https://github.com/rm3l/service-names-port-numbers)

See [https://github.com/rm3l/helm-charts/blob/main/charts/service-names-port-numbers/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/service-names-port-numbers/README.md) for further details.

### wallos

> Unofficial Chart for Wallos, the Open-Source Personal Subscription Tracker.
> This Chart also provides automated backups of Wallos to services like AWS S3.
> [https://github.com/ellite/Wallos](https://github.com/ellite/Wallos)

See [https://github.com/rm3l/helm-charts/blob/main/charts/wallos/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/wallos/README.md) for further details.

### wg-easy

> Unofficial Chart for wg-easy, the easiest way to run WireGuard VPN.
> It also provides a Web-based Admin UI.
> [https://github.com/wg-easy/wg-easy](https://github.com/wg-easy/wg-easy)

See [https://github.com/rm3l/helm-charts/blob/main/charts/wg-easy/README.md](https://github.com/rm3l/helm-charts/blob/main/charts/wg-easy/README.md) for further details.

## Developed by

* Armel Soro
  * [keybase.io/rm3l](https://keybase.io/rm3l)
  * [rm3l.org](https://rm3l.org) - &lt;apps+helm@rm3l.org&gt; - [@rm3l](https://twitter.com/rm3l)
  * [paypal.me/rm3l](https://paypal.me/rm3l)
  * [coinbase.com/rm3l](https://www.coinbase.com/rm3l)

## License

    MIT License

    Copyright (c) 2021-2022 Armel Soro

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
