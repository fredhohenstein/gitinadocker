import boto3
import logging
import os, sys
import time
from time import sleep

#Starting logger  #https://docs.python.org/3/howto/logging.html#logging-basic-tutorial
#Set verbosity to show all messages of severity >= INFO
logfile='_logging.WaitSecs.txt'
logging.basicConfig(filename=logfile,level=logging.INFO)
logging.info("WaitSecs")

#Debug output only
#print ('Number of arguments:', len(sys.argv), 'arguments.')
#print ('Argument List:', str(sys.argv))
#print (sys.argv[0])
#print (sys.argv[1])

build=1000
logging.info("Build %s", build)

zzztime = int(sys.argv[1])
print ('Sleeping for [s]: ', zzztime ) 
logging.info("WaitSecs: %s", zzztime)

sleep(zzztime)