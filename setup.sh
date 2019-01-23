#!/bin/bash
apt-get install build-essential checkinstall -y
apt-get update -y
apt-get upgrade -y
apt-get install nodejs -y
apt-get install python -y
apt-get install python3 -y
apt-get install git -y
apt-get install npm -y
apt-get install build-essentials -y

rm -r /OS.js
git clone -b v3 --single-branch https://github.com/os-js/OS.js.git
cd OS.js
npm install
npm install --save --production @osjs/xterm-application
npm install --save --production @osjs/ace-application
npm install --save --production @osjs/epub-application
npm install --save --production @osjs/standard-dark-theme
npm run package:discover
npm run build
npm run serve
echo the server runs on port 8000
