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
# ###################
# mitkar241.io DNS entries
# ###################
# controllers
192.168.0.3     ctrl-comp01.ctrl.mitkar241.io
192.168.0.4     ctrl-comp02.ctrl.mitkar241.io
192.168.0.5     ctrl-comp03.ctrl.mitkar241.io
# applications
192.168.0.6     apps-comp01.apps.mitkar241.io
192.168.0.7     apps-comp02.apps.mitkar241.io
192.168.0.8     apps-comp03.apps.mitkar241.io
# development
192.168.0.9     devs-comp01.devs.mitkar241.io
192.168.0.10    devs-comp02.devs.mitkar241.io
192.168.0.11    devs-comp03.devs.mitkar241.io
# testing
192.168.0.12    test-comp01.test.mitkar241.io
192.168.0.13    test-comp02.test.mitkar241.io
192.168.0.14    test-comp03.test.mitkar241.io
# staging
192.168.0.15    stag-comp01.stag.mitkar241.io
192.168.0.16    stag-comp02.stag.mitkar241.io
192.168.0.17    stag-comp03.stag.mitkar241.io
# production
192.168.0.18    prod-comp01.prod.mitkar241.io
192.168.0.19    prod-comp02.prod.mitkar241.io
192.168.0.20    prod-comp03.prod.mitkar241.io
```
