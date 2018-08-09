# GoTTY-Docker
Docker image based on Alpine Linux running GoTTY (https://github.com/yudai/gotty/).

# Dockerhub
https://hub.docker.com/r/infomaniach/gotty/

# Build 
Build using 
```sh
docker build -t <image_name> .
```
# Run

```bash
docker run --rm -it -p 8443:443 infomaniach/gotty:20180809
```

