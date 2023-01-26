# spigot-docker

DO NOT PUBLISH THE BUILT DOCKER IMAGE! (Redistribution of the built Spigot is prohibited!)

1. Place `src/spigot-1.19.3.jar`.
2. `mkdir work` (UID:GID=1000:1000)
3. `sudo docker buildx build --build-arg "SPIGOT_FILE=spigot-1.19.3.jar" -t "spigot:1.19.3" .`
4. `sudo docker run --rm -it -v "$PWD/work:/work" -p "127.0.0.1:25565:25565/udp" "spigot:1.19.3"`

```shell
# Geyser
sudo docker run --rm -it -v "$PWD/work:/work" -p "127.0.0.1:25565:25565/udp" -p "127.0.0.1:19132:19132/udp" "spigot:1.19.3"
```
