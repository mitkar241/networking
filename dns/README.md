# DNS
---
Install `bind9`
```
sudo apt install bind9 -y
```
## Windows Setup
---
Added Windows `host` file.
`location`: `C:\Windows\System32\drivers\etc\hosts`

## Current Plan  / Setup
---
```
####################
# mitkar241.io DNS entries
####################
# controller
192.168.0.3     control-01.ctrl.mitkar241.io
192.168.0.4     control-02.ctrl.mitkar241.io
192.168.0.5     control-03.ctrl.mitkar241.io
# applications
192.168.0.6     applicn-01.apps.mitkar241.io
192.168.0.7     applicn-02.apps.mitkar241.io
192.168.0.8     applicn-03.apps.mitkar241.io
# development
192.168.0.9     compute-01.devs.mitkar241.io
192.168.0.10    compute-02.devs.mitkar241.io
192.168.0.11    compute-03.devs.mitkar241.io
# testing / staging
192.168.0.12    compute-01.test.mitkar241.io
192.168.0.13    compute-02.test.mitkar241.io
192.168.0.14    compute-03.test.mitkar241.io
# production
192.168.0.15    compute-01.prod.mitkar241.io
192.168.0.16    compute-02.prod.mitkar241.io
192.168.0.17    compute-02.prod.mitkar241.io
```
