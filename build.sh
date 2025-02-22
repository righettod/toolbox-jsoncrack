#!/bin/bash
git clone --depth 1 https://github.com/AykutSarac/jsoncrack.com.git jsoncrack
cd jsoncrack
sed 's/RUN corepack/RUN npm i -g corepack@latest \&\& corepack/g' Dockerfile > DockerfilePatched
mv DockerfilePatched Dockerfile
