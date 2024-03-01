#!/bin/bash
#apt install npm sudo npm install -g pnpm
export NODE_OPTIONS=--max_old_space_size=1024
rm -rf jsoncrack.com 2>/dev/null
git clone --quiet --depth 1 https://github.com/AykutSarac/jsoncrack.com.git jsoncrack.com
cd jsoncrack.com
pnpm install
pnpm dev
