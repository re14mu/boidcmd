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

#once off docker volume creation
$ docker create -v /var --name boidData re14mu/boid-repository:boid

#run interactive docker
#start boid using the script below , you will be required to login if it is the first time running the command
$ docker run -t -i    --volumes-from boidData   re14mu/boid-repository:boid
output  string 
debf181b47bbd33b1abd80139aa1ede357bc51912317f2b39cda4cf0826cfaa2
#how to check if container is running
$ docker container list
CONTAINER ID        IMAGE                             COMMAND                  CREATED             STATUS              PORTS               NAMES
debf181b47bb        localhost:5000/boid_play:latest   "/bin/sh -c '/script…"   3 minutes ago       Up 3 minutes                            wonderful_curran







