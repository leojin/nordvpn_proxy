apt-get update || exit 1
apt-get -y upgrade || exit 1
apt-get install -y \
  kmod \
  wget \
  nginx \
  tinyproxy \
  strongswan \
  libcharon-extra-plugins \
  libcharon-standard-plugins || exit 1