#!/bin/bash
#set -e
echo ---------------------------------------------------------------------------
echo   Hello!, Running boinc 
echo -----------------------------------------------------------------------------
boinc --dir '/var/lib/boinc-client/' --daemon --allow_remote_gui_rpc --detach_console
echo "checking boid status"
boidcmd status
if [ ! -f /var/lib/boinc-client/boid.txt ]; then
  echo ---------------------------------------------------------------------------
    echo "First Time Running,going to setup"
echo ---------------------------------------------------------------------------
#read -p "Enter Your Name: "  username
#echo "Welcome $username!"
#read -s -p "Enter Password: " pswd
#echo $pswd
boidcmd setup
touch /var/lib/boinc-client/boid.txt
boidcmd resume
echo ---------------------------------------------------------------------------
echo "waiting for 30 seconds for project to load"
echo ---------------------------------------------------------------------------
sleep 30
boidcmd status
boidcmd resume
echo ---------------------------------------------------------------------------
echo "waiting another for 30 seconds for project to load"
echo ---------------------------------------------------------------------------

sleep 30
boidcmd suspend
boidcmd resume
while true; do
echo ---------------------------------------------------------------------------
echo "waiting another for 30 seconds for project to load"
echo ---------------------------------------------------------------------------

 boidcmd status;sleep 30 ;
done
else
echo ---------------------------------------------------------------------------
 echo "Boid Resume"
echo ---------------------------------------------------------------------------
boidcmd resume
echo ---------------------------------------------------------------------------
echo "waiting for for project to load"
echo ---------------------------------------------------------------------------
sleep 60
echo ---------------------------------------------------------------------------
echo "DO NOT CLOSE THE  TERMINAL OR DO CTRL+C, open another terminal to check the status "
echo -------------------------------------------------------------------
boidcmd resume
boidcmd status
echo ---------------------------------------------------------------------------
echo "DO NOT CLOSE THE  TERMINAL OR DO CTRL+C, open another terminal to check the status "
echo -------------------------------------------------------------------

fi
#while true; do date >> /home/ds/out.log & boidcmd status|grep -e suc -e host_t >> /home/ds/out.log & uptime >> /home/ds/out.log ;sleep 3600;done &

#while $1
#do
## echo "Press [CTRL+C] to stop.."
 #sleep 5
  #  echo "My second and third argument is $2 & $3"
#done
