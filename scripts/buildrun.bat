@echo off
cls

cd ..
docker build --rm -t websiteinadockerlokaal .
docker images ls
docker run --name websiteinadockerlokaal  websiteinadockerlokaal 

cd /scripts
rem pause