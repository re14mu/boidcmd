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
$ docker run -t -i   -d --volumes-from boidData   re14mu/boid-repository:boid
output  string 
debf181b47bbd33b1abd80139aa1ede357bc51912317f2b39cda4cf0826cfaa2





