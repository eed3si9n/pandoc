#!/bin/bash

cd /tmp

wget "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansJP.zip"
wget "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSC.zip"

mkdir -p NotoSansJP
unzip -d NotoSansJP NotoSansJP.zip
mkdir -p NotoSansSC
unzip -d NotoSansSC NotoSansSC.zip

mkdir -p /usr/share/fonts/opentype/NotoSansJP
mkdir -p /usr/share/fonts/opentype/NotoSansSC

cp NotoSansJP/*.otf /usr/share/fonts/opentype/NotoSansJP
cp NotoSansSC/*.otf /usr/share/fonts/opentype/NotoSansSC

rm NotoSansJP.zip NotoSansSC.zip
rm -rf NotoSansJP NotoSansSC
