#RPI_Downloads.sh
#Mohammed Emun
#Run this script to download node modules for 
#the Raspberry Pi

#Use "sudo bash RPi_Downloads.sh" to run this script in the terminal
clear;
echo "Unzipping vuforia-spatial-edge-server";
unzip vuforia-spatial-edge-server.zip;


clear;
echo "Starting Shell Script..";
apt-get remove nodered -y;
apt-get remove nodejs nodejs-legacy -y;
curl -L https://git.io/n-install | bash;
sudo apt-get install nodejs npm;
clear;
echo "Node Version:";
node --version;
echo "NPM Version:";
npm --version;
echo;
echo;
echo;
echo "Moving 'spatialToolbox' folder to Documents";
mv spatialToolbox /home/pi/Documents;
echo "Moved Folder";
echo "Doing npm installs";
cd vuforia-spatial-edge-server;
echo "npm installing in 'vuforia-spatial-edge-server' folder";
npm install;
cd addons;
cd vuforia-spatial-core-addon;
echo "npm installing in addon folders";
npm install; 
cd ..;
cd vuforia-spatial-robotic-addon;
npm install;

clear;
echo;
echo;
echo;
echo;
echo;
echo "All Downloads Finished!";
echo "type in 'cd vuforia-spatial-edge-server'";
echo "And then 'node server' to start the server!";



