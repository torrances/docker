################################################################
##
## PURPOSE:
## build a maven container
## this image isn't meant to be launched as a standalone container
## but provides an extension base for many other images
##
## HISTORY:
## 10:05 AM 4/22/2015 created 
##
## PREREQUSITES:
## 1. docker > 1.4
##
################################################################

sudo docker \
  build --no-cache -t \
  craig/maven .