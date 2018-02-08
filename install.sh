#!/usr/bin/env bash
if [ $(basename `pwd`) != "templates" ];then
    echo "[Error] Please do this in the templates directory!"
    exit
fi
if [ ! -d "clearision" ]; then
    git clone https://github.com/SilverBlogTheme/clearision.git --depth 1
fi
ln -sv ../clearision/static ./static/clearision
cd clearision
if [ -f "config.example.json" ]; then
    cp config.example.json config.json
    vim config.json
fi
