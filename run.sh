docker run -d \
  --name=calibre-web \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e DOCKER_MODS=linuxserver/mods:universal-calibre `#optional` \
  -e OAUTHLIB_RELAX_TOKEN_SCOPE=1 `#optional` \
  -p 8015:8015 \
  -v /volume1/calserve/data:/config \
  -v /var/services/homes/mark/Drive/monsterbookcollection:/books \
  --restart unless-stopped \
  lscr.io/linuxserver/calibre-web:latest

