<a href="https://www.boid.com/"><img src="https://raw.githubusercontent.com/Boid-John/eos-airdrops/master/logos/BoidLogo-lg.png" title="Boid" alt="Boid"></a>

<p align="center">
    <a href="https://t.me/Boidcom_official">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Telegram">
    </a>
    <a href="LICENSE">
        <img src="https://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://twitter.com/boidcom">
        <img src="https://img.shields.io/twitter/url/http/shields.io.svg?style=social&style=plastic" alt="Twitter">
    </a>
</p>


# Boid Docker CLI

### Setup


download and install docker for your OS from  https://docs.docker.com/install/

#### below setup will download docker image that is ready to run 

```shell
#start boid using the script below , you will be required to login if it is the first time running the command
$  sudo docker run -t -i -d  -e boidAccountEmail='youremail' -e boidAccountPassWord='yourpassword' --name=docker_container  re14mu/boid-repository:boid 
output a long string like
c386cd77396a749f2c54a0e73cd23044304f4a0371d8600c1f3973f4634d8225
#how to check if container is running
$ docker container list
CONTAINER ID        IMAGE                             COMMAND                  CREATED             STATUS              PORTS               NAMES
debf181b47bb        localhost:5000/boid_play:latest   "/bin/sh -c '/script…"   3 minutes ago       Up 3 minutes                            wonderful_curran
# how to check if boid is running inside container, note: project may take while to load all CPU CORES, about 3 minutes  
$ docker exec -ti <CONTAINER ID> boidcmd status
#how to stop container
$ docker container stop <ONTAINER ID>









