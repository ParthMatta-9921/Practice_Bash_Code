#!/bin/bash
LOG_FILE=~/project/onboard.log
if [ $# -ne 1 ]; then
  echo "Invalid no. of arguments"
  echo "usage: ./onboard.sh <username>"
  exit 1
fi

USERNAME=$1
echo "User to be created: $USERNAME"

#redirect standard output and error to /dev/null to keep the terminal clean
if id "$USERNAME" &>/dev/null; then
  echo "User $USERNAME already exists"
  echo "Exiting ..."
  exit 1
fi
echo "User $USERNAME does not exist, proceeding.."
# adding the user now
echo "Creating user..."
sudo useradd -m -s /bin/bash "$USERNAME"
echo "User created successfully" #with home dir and default bash shell
#creating a work dir/folder
echo "Setting up work directory..."
sudo mkdir /home/$USERNAME/work
sudo chown $USERNAME:$USERNAME /home/$USERNAME/work # to change the ownership from root to the new user
echo "User setup complete."
#logging
echo "[$(date)] User $USERNAME created" >> $LOG_FILE