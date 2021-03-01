#!/bin/sh
git clone https://github.com/9fans/plan9port plan9
cd plan9
sudo apt install xorg-dev -y
./INSTALL
echo "" >> ~/.bashrc
echo "# plan9port" >> ~/.bashrc
echo "PLAN9=/home/$USER/plan9 export PLAN9" >> ~/.bashrc
echo "PATH=$PATH:$PLAN9/bin export PATH" >> ~/.bashrc
