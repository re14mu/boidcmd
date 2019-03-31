!/bin/sh
rm boidfiles.tar
tar -cvf boidfiles.tar *
#sudo docker login -u re14mu
sudo docker build -t localhost:5000/boid_play .
sudo docker tag localhost:5000/boid_play re14mu/boid-repository:boid
#sudo docker push re14mu/boid-repository:boid
