sudo docker build -t \
  craig/github .

export WS=/home/craig/workspaces2
mkdir -p $WS

sudo docker run -it \
  --name github \
  craig/github
