@echo off
cls

cd ..
rem docker pull 
docker build --rm -t websiteinadockerlokaal  .

cd /scripts
rem pause