docker run -d --name=calibre-web \
-p 8083:8083 \
-e PUID=1027 \
-e PGID=100 \
-e TZ=Europe/Lisbon \
-e DOCKER_MODS=linuxserver/mods:universal-calibre \
-e OAUTHLIB_RELAX_TOKEN_SCOPE=1 \
-v /volume1/docker/calserve/data:/config \
-v /volume1/calibre/monsterbookcollection:/books \
--restart always \
lscr.io/linuxserver/calibre-web:latest
