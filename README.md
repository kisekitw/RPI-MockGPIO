# RPI-MockGPIO

docker build --build-arg DOCKER_ENV=[test|develop] -t mockgpio:1.0.0 . <br>
docker run --privileged -u root -it mockgpio:1.0.0
