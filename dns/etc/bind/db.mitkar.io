;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.mitkar.io. root.mitkar.io. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.mitkar.io.
ns1	IN	A	192.168.0.6
backend-01	IN	A	192.168.0.6
backend-02	IN	A	192.168.0.7
backend-03      IN      A       192.168.0.8
@	IN	AAAA	::1
