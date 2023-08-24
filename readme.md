# homelab

## Running tailscale VPN

Command to start VPN with DNS: `sudo tailscale up --accept-dns --advertise-routes=192.168.x.x/32`

* Make sure to replace the IP address with the local IP of the server
* advertise-routes: setup a subnet router to the server IP
* accept-dns: allow DNS requests to be made over VPN
