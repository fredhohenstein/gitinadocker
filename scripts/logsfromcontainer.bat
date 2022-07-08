@echo off
cls

COLOR %3
python waitsecs.py %2
docker logs %1

pause