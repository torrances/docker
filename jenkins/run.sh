mkdir ~/jpr

docker build \
  --no-cache -t \
  craig/jenkins .

docker run \
  -p 8040:8080 \
  -v ~/jpr:/var/jenkins_home \
  craig/jenkins