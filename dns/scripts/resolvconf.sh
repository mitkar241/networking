#!/bin/bash

<<DESC
@ FileName   : resolvconf.sh
@ Description: Addition of permanent nameservers in resolv.conf
@ Usage      : bash resolvconf.sh
DESC

function resolv_ubuntu() {
  sudo apt install resolvconf -y
  sudo cp ./etc/resolvconf/resolv.conf.d/head /etc/resolvconf/resolv.conf.d/head
  sudo resolvconf --enable-updates
  sudo resolvconf -u
}

function resolv_centos() {
  new_lines="dns=none\n#plugins=ifcfg-rh,ibft"
  sudo sed -i "s/#plugins=ifcfg-rh/$new_lines/" /etc/NetworkManager/NetworkManager.conf
  sudo systemctl restart NetworkManager.service
  sudo cp ./etc/resolv.conf /etc/resolv.conf
}

function main() {
  cd ..
  source /etc/os-release
  if [[ "$ID_LIKE" == "debian" && "$ID" == "ubuntu" ]]; then
    resolv_ubuntu
  elif [[ "$ID_LIKE" == "rhel fedora" && "$ID" == "centos" ]]; then
    resolv_centos
  else
    echo "Unknown OS / Flavour"
  fi
}

main "$@"

# TEST 1:
#cat /etc/resolv.conf
# Expected Output:
#options rotate
#options timeout:1
##nameserver 8.8.8.8
##nameserver 8.8.8.4
#nameserver 192.168.0.6
#nameserver 127.0.0.53
#options edns0

# TEST 2:
#nslookup google.com
# Expected Output:
#Server:		127.0.0.53
#Address:	127.0.0.53#53
#
#Non-authoritative answer:
#Name:	google.com
#Address: 142.250.195.238
#Name:	google.com
#Address: 2404:6800:4007:828::200e
#

# TEST 3:
#nslookup controller.mitkar.io
# Expected Output:
#Server:		192.168.0.6
#Address:	192.168.0.6#53
#
#Name:	controller.mitkar.io
#Address: 192.168.0.6
#

