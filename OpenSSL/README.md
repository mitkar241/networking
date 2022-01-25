# OpenSSL
---
### Firefox
---
```
- firefox
- Preferences
- Privacy & Security
- View Certificates...
- Authorities
  - Import...
  - Delete or Distrust...
```
### Flags
---
```bash
sudo openssl req -x509 -nodes \
-days 365 \
-newkey rsa:2048 \
-keyout /etc/ssl/private/mitkar.io.key \
-out /etc/ssl/certs/mitkar.io.crt
```
`openssl`: This is the basic command line tool for creating and managing OpenSSL certificates, keys, and other files.
`req`: This subcommand specifies that we want to use X.509 certificate signing request (CSR) management. The “X.509” is a public key infrastructure standard that SSL and TLS adheres to for its key and certificate management. We want to create a new X.509 cert, so we are using this subcommand.
`-x509`: This further modifies the previous subcommand by telling the utility that we want to make a self-signed certificate instead of generating a certificate signing request, as would normally happen.
`-nodes`: (short for no DES) This tells OpenSSL to skip the option to secure our certificate with a passphrase. We need Nginx to be able to read the file, without user intervention, when the server starts up. A passphrase would prevent this from happening because we would have to enter it after every restart.
`-days 365`: This option sets the length of time that the certificate will be considered valid. We set it for one year here.
`-newkey rsa:2048`: This specifies that we want to generate a new certificate and a new key at the same time. We did not create the key that is required to sign the certificate in a previous step, so we need to create it along with the certificate. The rsa:2048 portion tells it to make an RSA key that is 2048 bits long.
`-keyout`: This line tells OpenSSL where to place the generated private key file that we are creating.
`-out`: This tells OpenSSL where to place the certificate that we are creating.
### Sample Output
---
```bash
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/mitkar.io.key -out /etc/ssl/certs/mitkar.io.crt
```
```
Generating a RSA private key
.......................................+++++
.+++++
writing new private key to '/etc/ssl/private/mitkar.io.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:IN
State or Province Name (full name) [Some-State]:West Bengal
Locality Name (eg, city) []:Kolkata
Organization Name (eg, company) [Internet Widgits Pty Ltd]:mitkar.io
Organizational Unit Name (eg, section) []:System Administration
Common Name (e.g. server FQDN or YOUR name) []:controller.mitkar.io
Email Address []:raktimhalder241@gmail.com
```
### Additional Steps
---
```bash
sudo cp /etc/ssl/private/mitkar.io.key sslcert/mitkar.io.key
sudo cp /etc/ssl/certs/mitkar.io.crt sslcert/mitkar.io.crt
sudo chmod 644 sslcert/mitkar.io.*
```
