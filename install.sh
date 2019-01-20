#!/usr/bin/env sh
set -o errexit
templates_name="clearision"
if [ $(basename `pwd`) != "templates" ];then
    echo "[Error] Please do this in the templates directory!"
    exit
fi
if [ ! -d ${templates_name} ]; then
    git clone https://github.com/SilverBlogTheme/${templates_name}.git
fi
if [ ! -L ./static/${templates_name} ]; then
ln -sv ../${templates_name}/static ./static/${templates_name}
fi
if [ -f "config.example.json" ]; then
    cp ${templates_name}/config.example.json ${templates_name}/config.json
fi

