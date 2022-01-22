cd ..
sudo apt install bind9 -y
sudo systemctl enable bind9
sudo cp ./etc/bind/named.conf.* /etc/bind/
sudo cp ./etc/bind/db.* /etc/bind/

# PRE-TEST
#cd /etc/bind/

# TEST 1:
#named-checkconf
# Expected Output:
#

# TEST 2:
#named-checkzone mitkar.io db.mitkar.io
# Expected Output:
#zone mitkar.io/IN: loaded serial 2
#OK

# TEST 3:
#named-checkzone 0.168.192.in-addr.arpa db.0.168.192
# Expected Output:
#zone mitkar.io/IN: loaded serial 2
#OK

sudo service bind9 restart
#sudo service bind9 status

# TEST 4:
#nslookup google.com
# Expected Output:
#Server:	127.0.0.53
#Address:	127.0.0.53#53
#
#Non-authoritative answer:
#Name:	google.com
#Address: 142.250.195.238
#Name:	google.com
#Address: 2404:6800:4007:828::200e
#

# TEST 5:
#nslookup controller.mitkar.io
# Expected Output:
#Server:	192.168.0.6
#Address:	192.168.0.6#53
#
#Name:	controller.mitkar.io
#Address: 192.168.0.6
#

