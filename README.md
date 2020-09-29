# golint-docker
golint docker image, for use by drone

# Usage
```
docker pull kenretto/golint:latest
docker run -v project_path:/golint kenretto/golint golint ./... 
```

# Default command
```
golint ./...
```
