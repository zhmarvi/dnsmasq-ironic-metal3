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

## VALUES

The following values need to be updated in the values.yaml to allow PXE Boot MACS to be served with DHCP IPs based on Host Networks

Based on this document: https://book.metal3.io/quick-start#dhcp-server
```
env:
  port: "6180"
  dhcpHosts: "<NODE_MAC1>,<NODE_MAC2>,xxx" # COMMA SERARATED LIST
  dhcpIgnore: "tag:!known"
  provisioningInterface: "ens18" # (Optional) Provisioning Interface of the DCHP server container worker node
  dhcpRange: "192.168.1.75,192.168.1.77,255.255.255.0,12h" # Comma Separated, DHCP Range of addresses from the assigned PXE Network and Time
  gatewayIp: "192.168.1.1" 
  dnsIp: "192.168.1.252"
```
