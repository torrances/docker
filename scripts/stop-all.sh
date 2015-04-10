#  <https://coderwall.com/p/ewk0mq/stop-remove-all-docker-containers>
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm -v $(sudo docker ps -a -q)