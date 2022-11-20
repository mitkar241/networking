;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.mitkar241.io. root.mitkar241.io. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.mitkar241.io.
ns1	IN	A	192.168.0.3
ctrl-comp01.ctrl	IN	A	192.168.0.3
ctrl-comp02.ctrl	IN	A	192.168.0.4
ctrl-comp03.ctrl	IN	A	192.168.0.5
apps-comp01.apps	IN	A	192.168.0.6
apps-comp02.apps	IN	A	192.168.0.7
apps-comp03.apps	IN	A	192.168.0.8
devs-comp01.devs	IN	A	192.168.0.9
devs-comp02.devs	IN	A	192.168.0.10
devs-comp03.devs	IN	A	192.168.0.11
test-comp01.test	IN	A	192.168.0.12
test-comp02.test	IN	A	192.168.0.13
test-comp03.test	IN	A	192.168.0.14
stag-comp01.stag	IN	A	192.168.0.15
stag-comp02.stag	IN	A	192.168.0.16
stag-comp03.stag	IN	A	192.168.0.17
prod-comp01.prod	IN	A	192.168.0.18
prod-comp02.prod	IN	A	192.168.0.19
prod-comp03.prod	IN	A	192.168.0.20
@	IN	AAAA	::1
