# install_xmrig.sh
# A shell script to install xmrig (Monero cryptocurrency mining software) on any Linux machine.
# (cc) BY Pete Laric / http://www.PeteLaric.com
# Stolen from https://blockforums.org/topic/1257-how-to-mine-monero-and-compile-xmrig-on-a-raspberry-pi-4-cpu-mining-in-2021/
#
# To run:
#
# sudo sh install_xmrig.sh
#
cd ~
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make
~/xmrig/build/xmrig -o pool.minexmr.com:4444 -u 45XUWhiEnAgYLTkjTHJjYeXat7pq1A3FBcBRyvrECdJu3EdNKfJuCc2JJq13u9xLbdc7dqqQ2G6veEHEr1hru5hoScFRZ9A --rig-id GitHub
