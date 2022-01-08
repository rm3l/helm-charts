# adguard-home

Unofficial Chart for Adguard Home, the network-wide ad and tracking blocker.
https://github.com/AdguardTeam/AdGuardHome

[![Latest version](https://img.shields.io/badge/latest_version-0.1.0-blue)](https://artifacthub.io/packages/helm/rm3l/adguard-home)

## Installation

```bash
$ helm repo add rm3l https://helm-charts.rm3l.org
$ helm install my-adguard-home rm3l/adguard-home --version 0.1.0
```

See https://artifacthub.io/packages/helm/rm3l/adguard-home?modal=install

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| bootstrapConfig.auth_attempts | int | `5` |  |
| bootstrapConfig.beta_bind_port | int | `0` |  |
| bootstrapConfig.bind_host | string | `"0.0.0.0"` | AdGuard Home config. See [this page](https://github.com/AdguardTeam/AdGuardHome/wiki/Configuration#configuration-file) |
| bootstrapConfig.bind_port | int | `80` |  |
| bootstrapConfig.block_auth_min | int | `15` |  |
| bootstrapConfig.clients | list | `[]` |  |
| bootstrapConfig.debug_pprof | bool | `false` |  |
| bootstrapConfig.dhcp.dhcpv4.gateway_ip | string | `""` |  |
| bootstrapConfig.dhcp.dhcpv4.icmp_timeout_msec | int | `1000` |  |
| bootstrapConfig.dhcp.dhcpv4.lease_duration | int | `86400` |  |
| bootstrapConfig.dhcp.dhcpv4.options | list | `[]` |  |
| bootstrapConfig.dhcp.dhcpv4.range_end | string | `""` |  |
| bootstrapConfig.dhcp.dhcpv4.range_start | string | `""` |  |
| bootstrapConfig.dhcp.dhcpv4.subnet_mask | string | `""` |  |
| bootstrapConfig.dhcp.dhcpv6.lease_duration | int | `86400` |  |
| bootstrapConfig.dhcp.dhcpv6.ra_allow_slaac | bool | `false` |  |
| bootstrapConfig.dhcp.dhcpv6.ra_slaac_only | bool | `false` |  |
| bootstrapConfig.dhcp.dhcpv6.range_start | string | `""` |  |
| bootstrapConfig.dhcp.enabled | bool | `false` |  |
| bootstrapConfig.dhcp.interface_name | string | `""` |  |
| bootstrapConfig.dns.aaaa_disabled | bool | `false` |  |
| bootstrapConfig.dns.all_servers | bool | `true` |  |
| bootstrapConfig.dns.allowed_clients | list | `[]` |  |
| bootstrapConfig.dns.anonymize_client_ip | bool | `false` |  |
| bootstrapConfig.dns.bind_hosts[0] | string | `"0.0.0.0"` |  |
| bootstrapConfig.dns.blocked_hosts[0] | string | `"version.bind"` |  |
| bootstrapConfig.dns.blocked_hosts[1] | string | `"id.server"` |  |
| bootstrapConfig.dns.blocked_hosts[2] | string | `"hostname.bind"` |  |
| bootstrapConfig.dns.blocked_response_ttl | int | `10` |  |
| bootstrapConfig.dns.blocked_services | list | `[]` |  |
| bootstrapConfig.dns.blocking_ipv4 | string | `""` |  |
| bootstrapConfig.dns.blocking_ipv6 | string | `""` |  |
| bootstrapConfig.dns.blocking_mode | string | `"default"` |  |
| bootstrapConfig.dns.bogus_nxdomain | list | `[]` |  |
| bootstrapConfig.dns.bootstrap_dns[0] | string | `"1.1.1.1"` |  |
| bootstrapConfig.dns.bootstrap_dns[1] | string | `"1.0.0.1"` |  |
| bootstrapConfig.dns.bootstrap_dns[2] | string | `"9.9.9.10"` |  |
| bootstrapConfig.dns.bootstrap_dns[3] | string | `"149.112.112.10"` |  |
| bootstrapConfig.dns.bootstrap_dns[4] | string | `"2620:fe::10"` |  |
| bootstrapConfig.dns.bootstrap_dns[5] | string | `"2620:fe::fe:10"` |  |
| bootstrapConfig.dns.cache_optimistic | bool | `true` |  |
| bootstrapConfig.dns.cache_size | int | `4194304` |  |
| bootstrapConfig.dns.cache_time | int | `30` |  |
| bootstrapConfig.dns.cache_ttl_max | int | `0` |  |
| bootstrapConfig.dns.cache_ttl_min | int | `0` |  |
| bootstrapConfig.dns.disallowed_clients | list | `[]` |  |
| bootstrapConfig.dns.edns_client_subnet | bool | `false` |  |
| bootstrapConfig.dns.enable_dnssec | bool | `false` |  |
| bootstrapConfig.dns.fastest_addr | bool | `false` |  |
| bootstrapConfig.dns.fastest_timeout | string | `"1s"` |  |
| bootstrapConfig.dns.filtering_enabled | bool | `true` |  |
| bootstrapConfig.dns.filters_update_interval | int | `24` |  |
| bootstrapConfig.dns.ipset | list | `[]` |  |
| bootstrapConfig.dns.local_domain_name | string | `"lan"` |  |
| bootstrapConfig.dns.local_ptr_upstreams | list | `[]` |  |
| bootstrapConfig.dns.max_goroutines | int | `300` |  |
| bootstrapConfig.dns.parental_block_host | string | `"family-block.dns.adguard.com"` |  |
| bootstrapConfig.dns.parental_cache_size | int | `1048576` |  |
| bootstrapConfig.dns.parental_enabled | bool | `false` |  |
| bootstrapConfig.dns.port | int | `53` |  |
| bootstrapConfig.dns.protection_enabled | bool | `true` |  |
| bootstrapConfig.dns.querylog_enabled | bool | `true` |  |
| bootstrapConfig.dns.querylog_file_enabled | bool | `true` |  |
| bootstrapConfig.dns.querylog_interval | string | `"168h"` |  |
| bootstrapConfig.dns.querylog_size_memory | int | `1000` |  |
| bootstrapConfig.dns.ratelimit | int | `20` |  |
| bootstrapConfig.dns.ratelimit_whitelist | list | `[]` |  |
| bootstrapConfig.dns.refuse_any | bool | `true` |  |
| bootstrapConfig.dns.resolve_clients | bool | `true` |  |
| bootstrapConfig.dns.rewrites | list | `[]` |  |
| bootstrapConfig.dns.safebrowsing_block_host | string | `"standard-block.dns.adguard.com"` |  |
| bootstrapConfig.dns.safebrowsing_cache_size | int | `1048576` |  |
| bootstrapConfig.dns.safebrowsing_enabled | bool | `false` |  |
| bootstrapConfig.dns.safesearch_cache_size | int | `1048576` |  |
| bootstrapConfig.dns.safesearch_enabled | bool | `false` |  |
| bootstrapConfig.dns.statistics_interval | int | `90` |  |
| bootstrapConfig.dns.trusted_proxies[0] | string | `"127.0.0.0/8"` |  |
| bootstrapConfig.dns.trusted_proxies[1] | string | `"::1/128"` |  |
| bootstrapConfig.dns.upstream_dns[0] | string | `"https://dns.cloudflare.com/dns-query"` |  |
| bootstrapConfig.dns.upstream_dns[1] | string | `"tls://1dot1dot1dot1.cloudflare-dns.com"` |  |
| bootstrapConfig.dns.upstream_dns[2] | string | `"https://dns10.quad9.net/dns-query"` |  |
| bootstrapConfig.dns.upstream_dns_file | string | `""` |  |
| bootstrapConfig.dns.upstream_timeout | string | `"10s"` |  |
| bootstrapConfig.dns.use_private_ptr_resolvers | bool | `true` |  |
| bootstrapConfig.filters[0].enabled | bool | `true` |  |
| bootstrapConfig.filters[0].id | int | `1` |  |
| bootstrapConfig.filters[0].name | string | `"AdGuard DNS filter"` |  |
| bootstrapConfig.filters[0].url | string | `"https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"` |  |
| bootstrapConfig.filters[1].enabled | bool | `false` |  |
| bootstrapConfig.filters[1].id | int | `2` |  |
| bootstrapConfig.filters[1].name | string | `"AdAway Default Blocklist"` |  |
| bootstrapConfig.filters[1].url | string | `"https://adaway.org/hosts.txt"` |  |
| bootstrapConfig.filters[2].enabled | bool | `false` |  |
| bootstrapConfig.filters[2].id | int | `1641249001` |  |
| bootstrapConfig.filters[2].name | string | `"WindowsSpyBlocker - Hosts spy rules"` |  |
| bootstrapConfig.filters[2].url | string | `"https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt"` |  |
| bootstrapConfig.filters[3].enabled | bool | `false` |  |
| bootstrapConfig.filters[3].id | int | `1641249002` |  |
| bootstrapConfig.filters[3].name | string | `"OISD Blocklist Basic"` |  |
| bootstrapConfig.filters[3].url | string | `"https://abp.oisd.nl/basic/"` |  |
| bootstrapConfig.filters[4].enabled | bool | `false` |  |
| bootstrapConfig.filters[4].id | int | `1641249003` |  |
| bootstrapConfig.filters[4].name | string | `"Perflyst and Dandelion Sprout's Smart-TV Blocklist"` |  |
| bootstrapConfig.filters[4].url | string | `"https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV-AGH.txt"` |  |
| bootstrapConfig.filters[5].enabled | bool | `false` |  |
| bootstrapConfig.filters[5].id | int | `1641249004` |  |
| bootstrapConfig.filters[5].name | string | `"Game Console Adblock List"` |  |
| bootstrapConfig.filters[5].url | string | `"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/GameConsoleAdblockList.txt"` |  |
| bootstrapConfig.http_proxy | string | `""` |  |
| bootstrapConfig.language | string | `"en"` |  |
| bootstrapConfig.log_compress | bool | `false` |  |
| bootstrapConfig.log_file | string | `""` |  |
| bootstrapConfig.log_localtime | bool | `false` |  |
| bootstrapConfig.log_max_age | int | `3` |  |
| bootstrapConfig.log_max_backups | int | `0` |  |
| bootstrapConfig.log_max_size | int | `100` |  |
| bootstrapConfig.os.group | string | `""` |  |
| bootstrapConfig.os.rlimit_nofile | int | `0` |  |
| bootstrapConfig.os.user | string | `""` |  |
| bootstrapConfig.schema_version | int | `12` |  |
| bootstrapConfig.tls.allow_unencrypted_doh | bool | `true` | Whether to expose DNS over HTTPS over HTTP instead. -- Useful if Adguard Home is behind a reverse proxy already terminating TLS connections. |
| bootstrapConfig.tls.certificate_chain | string | `"-----BEGIN CERTIFICATE-----\nMIIFVDCCAzygAwIBAgIUM+ltXj0iog81U2Dqsavv6DCPE3YwDQYJKoZIhvcNAQEL\nBQAwHTEbMBkGA1UEAwwSbXkuZG5zLmV4YW1wbGUuY29tMB4XDTIyMDEwNjIzMjkx\nOVoXDTMyMDEwNDIzMjkxOVowHTEbMBkGA1UEAwwSbXkuZG5zLmV4YW1wbGUuY29t\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAwOKVaSijP1HLaMkqqOD/\nVIqchRt3UDljCM/rGAlL/1bYJKAxvdPxIffF3PPiwLFs4pMEeLnGZUtWjT/HTRpP\nU2uhUiOUd6fY/KtF4j46KHJaRV/kITtVHsygnSdgUibg3qGQpG1lcfMgsOmsCvcQ\n6151uPiJ+h+Vv6ARWD03+5WqMKHQGSEzwMp33F2h1OC4k1gcp3ZYt+GHk9rfXdxC\n0Gh2KxI8w5nKgbKJVgjwo7uIXk+JRwNuIDn29eywwWuWT2VERLLM/rVrENg25tKl\n/NmNEZRsLNaSQt2geJev4mQqfousIEqgy30IJ1ApQUX/rlLcSEB4X+tpMGuWEqEJ\nOJ5HiR4ZQSk9dr8aZQjRDGivFqK+3WkjuclUYYkN1KoOYshbpRARUljqfZEHy8Xc\nOSC09P59yrKwc70aBHbcRJpghw020W7rM4sMCjcmMaaI49Gd418g4CTuf9LlKQ2e\nmWtuw1mLSQiN1FjvvQi1iwSOGROLQnFSgPGehzd4hv4FP/C66ve3ayW5+Uu59cQC\n7bC/8fjVaxCSZZjkiu9hW44lTkEw492BzgCg1cbTygFaFzcolHgwlagOXCv77xrY\nBAqeIjSA0AsVtJ4nfqKuwgOJyL+JX2o+tPbg/9+BYXGQMF1dKPHMauQuvnpLc6gD\nBklwd3b9SjtYM7h4/ILy1+ECAwEAAaOBizCBiDAdBgNVHQ4EFgQUYRJ0FNVy5lSh\nEt0tMIMWfOIx+eYwHwYDVR0jBBgwFoAUYRJ0FNVy5lShEt0tMIMWfOIx+eYwDwYD\nVR0TAQH/BAUwAwEB/zA1BgNVHREELjAsghJteS5kbnMuZXhhbXBsZS5jb22CFnd3\ndy5teS5kbnMuZXhhbXBsZS5uZXQwDQYJKoZIhvcNAQELBQADggIBAIVK11AyIqFp\nPjiePjl/+izQWkILKFOwbE5dECF1jfSG6LbDCkOOwEFm3LgTAQrcKyOfyctWeU19\nbApMtTwfgBA5FEkqEAuyB7AJPG62nmsvOjp2IQFxkZNfsuCHTwqIBpQYvzfvKsbM\nlakwEUFN/jf+affXOwvXdOo5EuIZBQeCyNTN6witBWAnlUANZUT68/H8WKKX5LU1\nJoKPi+hETTOpV48KtVWX9FGRf2M6fGPYVpJhZCuBdtyoHPdiMZZgscqQbECYiwa4\npSEMjPTktRT434dn+hYv8f70TtdGHJblGpRDL6CCxUa0mIH0S3Gm2Oi9ndoAkxKZ\noKKP7+D9hgT6h++CmB8FBa9LD90KIwSYyqycCChbkVZjOcBF7w61/2vC8UEFjAin\nyju4kxWDQI5CxcZqE0FLGHrz0QDD1QAkWhDvOfyRzf+znWk0C13z1RDzlu6qJ+KQ\nyiAY68repdN7mMr6hRiFG2d8q053tIs9FzbxwgexasExNJpK/z6mxUPAWTuEImCE\n/A7i5LhgoybIfOaOlVRjChCmw0rUD0QkY2jf3WU5hH0kXewYJTDkLZZx4pktp7I1\nZtkn6iQ1aYr9GInZ6AeaCYnwPe6INXAGS2YZV3EObHaZPMqvJEHRvMaF0qoOOpjt\naE+GBbiAOPS9w/eFLaASK/YLA3I95swb\n-----END CERTIFICATE-----"` | sample self-signed certificate for my.dns.example.com. Valid for 3650 days. |
| bootstrapConfig.tls.certificate_path | string | `""` |  |
| bootstrapConfig.tls.dnscrypt_config_file | string | `""` |  |
| bootstrapConfig.tls.enabled | bool | `true` |  |
| bootstrapConfig.tls.force_https | bool | `false` |  |
| bootstrapConfig.tls.port_dns_over_quic | int | `784` |  |
| bootstrapConfig.tls.port_dns_over_tls | int | `853` |  |
| bootstrapConfig.tls.port_dnscrypt | int | `0` |  |
| bootstrapConfig.tls.port_https | int | `443` |  |
| bootstrapConfig.tls.private_key | string | `"-----BEGIN PRIVATE KEY-----\n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\nUdMaBW43oZ+E5o/yfWMcnVZCdlqd/A==\n-----END PRIVATE KEY-----"` | sample TLS Private key for my.dns.example.com |
| bootstrapConfig.tls.private_key_path | string | `""` |  |
| bootstrapConfig.tls.server_name | string | `"my.dns.example.com"` |  |
| bootstrapConfig.tls.strict_sni_check | bool | `false` |  |
| bootstrapConfig.user_rules | list | `[]` |  |
| bootstrapConfig.users | list | `[]` |  |
| bootstrapConfig.verbose | bool | `false` |  |
| bootstrapConfig.web_session_ttl | int | `720` |  |
| bootstrapConfig.whitelist_filters | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"adguard/adguardhome"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingresses.adminPanel.annotations | object | `{}` |  |
| ingresses.adminPanel.className | string | `""` |  |
| ingresses.adminPanel.enabled | bool | `false` |  |
| ingresses.adminPanel.hosts | list | `[{"host":"admin.adguard-home-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` |  kubernetes.io/tls-acme: "true" |
| ingresses.adminPanel.tls | list | `[]` |  |
| ingresses.http.annotations | object | `{}` |  |
| ingresses.http.className | string | `""` |  |
| ingresses.http.enabled | bool | `false` |  |
| ingresses.http.hosts | list | `[{"host":"adguard-home-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` |  kubernetes.io/tls-acme: "true" |
| ingresses.http.tls | list | `[]` |  |
| ingresses.https.annotations | object | `{}` |  |
| ingresses.https.className | string | `""` |  |
| ingresses.https.enabled | bool | `false` |  |
| ingresses.https.hosts | list | `[{"host":"adguard-home-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` |  kubernetes.io/tls-acme: "true" |
| ingresses.https.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.volumeClaimSpec.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.volumeClaimSpec.resources.requests.storage | string | `"1Gi"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  If not set and create is true, a name is generated using the fullname template |
| services | object | `{"adminPanel":{"port":3000,"type":"ClusterIP"},"dns":{"enabled":true,"port":53,"type":"NodePort"},"dnsOverQuic":{"enabled":true,"port1":784,"port2":8853,"type":"NodePort"},"dnsOverTls":{"enabled":true,"port":853,"type":"NodePort"},"dnscrypt":{"enabled":true,"port":5443,"type":"NodePort"},"http":{"port":80,"type":"ClusterIP"},"https":{"enabled":true,"port":443,"type":"ClusterIP"}}` |    type: ClusterIP   port: 80 |
| strategy | object | `{}` | Strategy used to replace old Pods by new ones |
| tolerations | list | `[]` |  |

