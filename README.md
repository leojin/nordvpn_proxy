# Description

Offer a solution to transform nodevpn service into a local http server.

Everything works under docker and k8s(k3s environment has not been tested).

# Steps

## 1 Build image

```bash
./build_image.sh
```

## 2 Collect nordvpn infomation

Consult the file `values.yaml`, you need to prepare the following materials:
- Nordvpn's user and pass
- Nordvpn's ip and host
- Your local machine ip(127.0.0.1 is also ok, but if you want to run your service on your nas or router, please use public ip)

## 3 Modify the file `values.yaml`

Use the meterials mentioned above to modify the file `values.yaml`.

## 3 Start service

```bash
cd chart/nordvpn
helm install nordvpn .
```

## 4 Use

### In pac mode

pac url: `http://{app.host_ip}:{service.pac}`/whitelist.pac

### In proxy mode

proxy addr: `http://{app.host_ip}:{service.proxy}`