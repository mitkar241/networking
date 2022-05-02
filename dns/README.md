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
# mitkar.io DNS entries
####################
# applications
192.168.0.3     applicn-01.apps.mitkar.io
192.168.0.4     applicn-02.ctlr.mitkar.io
192.168.0.5     applicn-03.ctlr.mitkar.io
# controller
192.168.0.6     control-01.ctlr.mitkar.io
192.168.0.7     control-02.ctlr.mitkar.io
192.168.0.8     control-03.ctlr.mitkar.io
# development
192.168.0.9     compute-01.dvlp.mitkar.io
192.168.0.10    compute-02.dvlp.mitkar.io
192.168.0.11    compute-03.dvlp.mitkar.io
# testing / staging
192.168.0.12    compute-01.test.mitkar.io
192.168.0.13    compute-02.test.mitkar.io
192.168.0.14    compute-03.test.mitkar.io
# production
192.168.0.15    compute-01.prod.mitkar.io
192.168.0.16    compute-02.prod.mitkar.io
192.168.0.17    compute-02.prod.mitkar.io
```
