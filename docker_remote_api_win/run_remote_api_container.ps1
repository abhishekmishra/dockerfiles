# firewall rule is
# netsh advfirewall firewall add rule name="docker_daemon" dir=in action=allow protocol=TCP localport=2376
 
docker run -d -p 2376:2375 -v /var/run/docker.sock:/var/run/docker.sock jarkt/docker-remote-api
