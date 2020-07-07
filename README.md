# getips
Get ips from interfaces fast for pentesting/CTF

## Usage
$ getips

```
lo: 127.0.0.1
wlan0: 192.168.0.5 
```

### Install
```
#  cat << EOF >> /bin/getips
#!/bin/bash

ifconfig | grep  "inet " -B 1 | sed 's/:.*//g' | sed 's/netmask.*//g' | sed 's/\n*inet/: /g' | tr -d ' ' | tr '\n' ' ' | sed 's/ -- /\n/g' | replace ' :' ': '; echo
EOF

# chmod +x /bin/getips
# getips
```
