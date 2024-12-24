# dnsmasq-ironic-metal3
Dnsmasq helm chart for metal3 ironic.

NOTE: Please run this after deploying Metal3 Service

## Install Chart
```
git clone https://github.com/zhmarvi/dnsmasq-ironic-metal3.git
```
## Install dnsmasq pod
```
helm install -n metal3-system dnsmasq ./dnsmasq-ironic-metal3/ --values ./dnsmasq-ironic-metal3/values.yaml
```
