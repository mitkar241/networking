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
ns1	IN	A	192.168.0.6
control-01.ctrl	IN	A	192.168.0.3
control-02.ctrl	IN	A	192.168.0.4
control-03.ctrl	IN	A	192.168.0.5
applicn-01.apps	IN	A	192.168.0.6
applicn-02.apps	IN	A	192.168.0.7
applicn-03.apps	IN	A	192.168.0.8
compute-01.devs	IN	A	192.168.0.9
compute-02.devs	IN	A	192.168.0.10
compute-03.devs	IN	A	192.168.0.11
compute-01.test	IN	A	192.168.0.12
compute-02.test	IN	A	192.168.0.13
compute-03.test	IN	A	192.168.0.14
compute-01.prod	IN	A	192.168.0.15
compute-02.prod	IN	A	192.168.0.16
compute-03.prod	IN	A	192.168.0.17
@	IN	AAAA	::1
