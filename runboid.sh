!/bin/bash
###############################################################################
#
###############################################################################
set -x

echo ---------------------------------------------------------------------------
echo   Hello!, Running boinc 
echo -----------------------------------------------------------------------------
boinc --dir '/var/lib/boinc-client/' --daemon --allow_remote_gui_rpc
echo "checking boid status"
boidcmd status

if [ ! -f /var/lib/boinc-client/boid.txt ]; then
  echo ---------------------------------------------------------------------------
    echo "First Time Running,going to setup"
echo ---------------------------------------------------------------------------
 boidcmd setup
touch /var/lib/boinc-client/boid.txt
boidcmd resume
echo ---------------------------------------------------------------------------
echo "waiting for 30 seconds for project to load"
echo ---------------------------------------------------------------------------
sleep 30
boidcmd status
else
echo ---------------------------------------------------------------------------
 echo "Boid Resume"
echo ---------------------------------------------------------------------------
boidcmd resume
echo ---------------------------------------------------------------------------
echo "waiting for 30 seconds for project to load"
echo ---------------------------------------------------------------------------
sleep 30
boidcmd status
fi
