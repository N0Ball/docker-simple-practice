# This is a docker practice for a simple flask app

## Build Image

To build the practice

```shell
# docker build . -t <image-name>
docker build . -t first-practice
```

### t (name of image)
give a tag to your image

## Run Container

Run the container

```shell
# docker run -d --rm -p 5000:5000 --name <container-name> <image-name>
docker run -d --rm -p 5000:5000 --name simple-flask first-practice
```

### d

run docker in background

### rm

remove your container after stop

### p `<source>:<destination>`

map your port from
- source
  - your computer's port
- destination
  - dockers port

### name

give your container a name

## Test your build

Your simple web app
[http://localhost:5000](http://localhost:5000)

The result should look like this

![](src/preview.png)