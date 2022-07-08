@echo off
cls
COLOR 57
rem stop containers
docker stop Wwebsiteinadockerlokaal 
docker rm websiteinadockerlokaal 

rem cleanup images
docker images -f dangling=true
docker rmi -f websiteinadockerLokaal 

rem cleanup
docker images prune
docker system prune

rem create new images
cd ..

docker build --rm -t websiteinadockerlokaal  .

cd scripts
start connect2container.bat websiteinadockerlokaal  30 57
start logsfromcontainer.bat websiteinadockerlokaal  30 57

rem run image as container
rem -p port on hostmachine:port on container
docker run -p 127.0.0.1:8181:80 --name websiteinadockerlokaal  websiteinadockerlokaal

pause