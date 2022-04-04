conn NordVPN
        keyexchange=ikev2
        dpdaction=clear
        dpddelay=300s
        eap_identity="USERNAME"
        leftauth=eap-mschapv2
        left=%defaultroute
        leftsourceip=%config
        right=SERVER_IP
        rightauth=pubkey
        rightsubnet=0.0.0.0/0
        rightid=%SERVER_HOSTNAME
        rightca=/etc/ipsec.d/cacerts/NordVPN.pem
        type=tunnel
        auto=add