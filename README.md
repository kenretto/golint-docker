# golint-docker
golint docker image, for use by drone

[docker-hub](https://hub.docker.com/r/kenretto/golint)

# Usage
```
docker run --rm -v your_project_path:/project -w /project  kenretto/golint
```

# Default command
```
golint ./...
```
