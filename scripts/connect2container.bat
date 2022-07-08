@echo off
cls

rem  
rem https://github.com/docker-library/mysql/issues/95
rem
 
COLOR %3
python waitsecs.py %2
docker exec -ti %1 /bin/bash

pause