#!/bin/bash

mkdir -p build

cd build

if [ -d stackedit ]; then
  cd stackedit
  git pull
else
  git clone git@github.com:benweet/stackedit.git
  cd stackedit
fi

npm install

npm run build

cd ../../

docker build -t abhishekmishra/stackedit .

docker tag abhishekmishra/stackedit:latest 192.168.1.33:5000/abhishekmishra/stackedit:latest
docker push 192.168.1.33:5000/abhishekmishra/stackedit:latest
