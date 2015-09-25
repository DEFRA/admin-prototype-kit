#!/bin/sh

# Tell vagrant to start the virtual machine. Is this is the first time it will
# also provision it
vagrant up

# By default vagrant virtual machines are headless so you access them using ssh
# via a terminal. Here we're connecting to the virtual machine, navigating to
# the vagrant folder (which is essentially the project folder mounted and linked
# to the virtual machine) and then running the standard startup script.
vagrant ssh -c "cd /vagrant/ && . bin/startup.sh"
