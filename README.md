# [riccardopomato/azcopy:v0.1](https://hub.docker.com/repository/docker/riccardopomato/azcopy)

This image has been composed using Alpine image. It's very small and contains only Azcopy command

Sync two Azure File Share using Azcopy:

```bash
docker run -it --rm riccardopomato/azcopy:v0.1 /app/azcopy sync 'https://<Source storageaccount name>.file.core.windows.net/<source share name>/<Source SAS Key it starts with ?sv=>' https://<Destination storageaccount name>.file.core.windows.net/<Destination share name>/<Destination SAS Key it starts with ?sv=>' --delete-destination true
```
