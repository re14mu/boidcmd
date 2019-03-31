#FROM ubuntu:bionic
FROM ubuntu:18.04
RUN mkdir -p /home/ds/boid/trunk

COPY   boidfiles.tar  /home/ds/boid/trunk/
RUN  tar -xvf /home/ds/boid/trunk/boidfiles.tar -C /home/ds/boid/trunk/
RUN apt-get update 
RUN  apt-get install npm -y

RUN npm install /home/ds/boid/trunk/ -g
RUN apt-get install sudo
RUN apt-get install boinc-client -y
RUN apt-get install vim -y
#RUN boidcmd run; sleep 60;
#RUN boidcmd set
#ENTRYPOINT ["boinc"]
