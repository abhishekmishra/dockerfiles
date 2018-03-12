#docker secret create domain.crt ~/certs/certificate.crt

#docker secret create domain.key ~/certs/private.key

#docker service create \
#  --name registry \
#  --secret domain.crt \
#  --secret domain.key \
#  --constraint 'node.labels.registry==true' \
#  --mount type=bind,src=/media/utildisk/docker-registry/,dst=/var/lib/registry \
#  -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
#  -e REGISTRY_HTTP_TLS_CERTIFICATE=/run/secrets/domain.crt \
#  -e REGISTRY_HTTP_TLS_KEY=/run/secrets/domain.key \
#  --publish published=5000,target=5000 \
#  --replicas 1 \
#  registry:2

#docker run -d \
#  --restart=always \
#  --name registry \
#  -v /home/abhishek/certs:/certs \
#  -v /media/utildisk/docker-registry:/var/lib/registry \
#  -e REGISTRY_HTTP_ADDR=0.0.0.0:5443 \
#  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/certificate.crt \
#  -e REGISTRY_HTTP_TLS_KEY=/certs/private.key \
#  -p 5443:5443 \
#  registry:2

docker run -d \
  --restart=always \
  --name registry \
  -v /media/utildisk/docker-registry:/var/lib/registry \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
  -p 5000:5000 \
  registry:2
