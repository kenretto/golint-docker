# golint-docker
golint docker image, for use by drone


# Usage
```
docker pull kenretto/golint:latest
docker run -v project_path:/project kenretto/golint golint ./... 
```
