cd ..
sudo apt install resolvconf -y
cd networking/dns/
sudo cp ./etc/resolvconf/resolv.conf.d/head /etc/resolvconf/resolv.conf.d/head
sudo resolvconf --enable-updates
sudo resolvconf -u

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

