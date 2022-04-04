Docker Usage 
```bash
# https://support.nordvpn.com/1047408742
docker run -d -it \
  -e NORDVPN_USERNAME='username' \
  -e NORDVPN_PASSWORD='password' \
  -e NORDVPN_IP='nordvpn ip' \
  -e NORDVPN_HOSTNAME='nordvpn host name' \
  -e NORDVPN_EXT_ADDR='local_ip:local_port_for_proxy' \
  -p local_port_for_pacfile:8080 \
  -p local_port_for_proxy:8081 \
  --cap-add NET_ADMIN \
  --name nordvpn-proxy \
  nordvpn-proxy:1.0
```