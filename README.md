# Docker DynamoDB
Supported tags
* **latest** using version dynamodb_local_2019-02-04.tar.gz
* **2015-07-16_1.0** using version dynamodb_local_2015-07-16_1.0.tar.gz

A very basic Docker DynamoDB container.

### To build the container
```
docker build -t ryanratcliff/dynamodb .
```

### Alternatively, the container can be pulled from Docker Registry
```
docker pull ryanratcliff/dynamodb
```

# Exposed Endpoints
The dynamodb local jar besides providing a dynamodb setup for development purposes also exposes a javascript shell for managing the tables

### If ports are exposed
```
http://localhost:8000/shell
```

### Direct connection to container
```
http://my_dynamodb_container:8000/shell
```

# Example usages

### To startup as is
```
docker run -d ryanratcliff/dynamodb
```

### To startup with all ports exposed to host
```
docker run -d -P ryanratcliff/dynamodb
```

### To startup with specific port exposed
```
docker run -d -p 8000:8000 ryanratcliff/dynamodb
```

### To startup with a mount point for persistent data
```
docker run -d -v /host/data/mount/point:/var/dynamodb_data ryanratcliff/dynamodb
```
