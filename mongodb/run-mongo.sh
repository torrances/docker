PORT=27017
DATA=/home/craig/dat
NAME=mongodb

sudo docker run --name $NAME -p $PORT:27017 -v $DATA:/data/db craig/mongo