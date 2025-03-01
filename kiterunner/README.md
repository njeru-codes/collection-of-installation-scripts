## kiterunner
Kiterunner is a tool designed for brute-forcing API endpoints using wordlists generated from OpenAPI specifications

```bash
#!/bin/bash

sudo apt install golang
git clone https://github.com/assetnote/kiterunner.git
cd kiterunner
make build
sudo mv dist/kr /usr/local/bin/
```

## usage 
getting the inbuilt wordlist
```bash
kr wordlist list
```
sample usage 
```bash
kr scan https://app.target.com -A=raft-large-directories-lowercase.txt
```
