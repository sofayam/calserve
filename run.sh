docker run -d --name=calibre-web \
-p 8015:8083 \
-e PUID=1027 \
-e PGID=100 \
-e TZ=Europe/Lisbon \
-e DOCKER_MODS=linuxserver/mods:universal-calibre \
-e OAUTHLIB_RELAX_TOKEN_SCOPE=1 \
-v /volume1/docker/calserve/data:/config \
-v /var/services/homes/mark/Drive/monsterbookcollection:/books:ro \
--restart always \
ghcr.io/linuxserver/calibre-web
