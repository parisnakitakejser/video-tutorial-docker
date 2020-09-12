docker network rm ingress -y
docker network create \
  --driver overlay \
  --ingress \
  --subnet=192.100.0.0/16 \
  --gateway=192.100.0.2 \
  --opt com.docker.network.driver.mtu=1200 \
  ingress
