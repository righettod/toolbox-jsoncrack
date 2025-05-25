#!/bin/bash
# See this issue for technical details:
# https://github.com/AykutSarac/jsoncrack.com/issues/434#issuecomment-2630202211
echo "[+] Clone the jsoncrack repository"
git clone --depth 1 https://github.com/AykutSarac/jsoncrack.com.git jsoncrack
cd jsoncrack
echo "[+] Apply patching operations"
sed 's/RUN corepack/RUN npm i -g corepack@latest \&\& corepack/g' Dockerfile > DockerfilePatched
sed 's/--frozen-lockfile/--no-frozen-lockfile/g' DockerfilePatched > DockerfilePatched2
mv DockerfilePatched2 DockerfilePatched
mv DockerfilePatched Dockerfile
echo "[V] Ready for the build of the image"
