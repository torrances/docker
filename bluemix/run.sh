sudo docker build -t \
  craig/bluemix .

sudo docker run \
  --privileged -t -i \
  -p 4444 \
  --name bluemix \
  craig/bluemix