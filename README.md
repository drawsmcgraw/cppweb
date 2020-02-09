# sample app using C++ and crow for a web server

Crow: https://github.com/ipkn/crow

## DOCKER

### build container(first time may take a while):
`cd cppbox`

`docker build -t cppbox`

verify install. if it succeeded, this will show a bunch of boost files.
`docker run -it cppbox:latest bash`

`find usr/ -name libboost*.*`

### project build build:
add a volume and run using cppbox image. type exit to leave the container
`sudo docker run -v ~/jordydev/cppweb:/usr/src/cppweb -it cppbox:latest bash`

`cd /usr/src/cppweb/build/hello_crow/build`

`make`

### run the web server:
`sudo docker run -v /path/on/local/cppweb -p 4000:4000 -e PORT=4000 -it  cppbox:latest /usr/src/cppweb/hello_crow/build/hello_crow`

